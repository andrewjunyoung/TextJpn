{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_TextJpn (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/jun/Library/Haskell/bin"
libdir     = "/Users/jun/Library/Haskell/ghc-8.0.2-x86_64/lib/TextJpn-0.1.0.0"
dynlibdir  = "/Users/jun/Library/Haskell/ghc-8.0.2-x86_64/lib/x86_64-osx-ghc-8.0.2"
datadir    = "/Users/jun/Library/Haskell/share/ghc-8.0.2-x86_64/TextJpn-0.1.0.0"
libexecdir = "/Users/jun/Library/Haskell/libexec"
sysconfdir = "/Users/jun/Library/Haskell/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "TextJpn_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "TextJpn_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "TextJpn_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "TextJpn_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "TextJpn_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "TextJpn_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
