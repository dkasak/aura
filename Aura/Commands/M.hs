-- Handles all `-M` operations for building from the ABS.

{-

Copyright 2012, 2013 
Colin Woodbury <colingw@gmail.com>
Nicholas Clarke <nicholas.clarke@sanger.ac.uk>

This file is part of Aura.

Aura is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Aura is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Aura.  If not, see <http://www.gnu.org/licenses/>.

-}

module Aura.Commands.M ( install ) where

import qualified Aura.Install as I

import Aura.Packages.ABS
import Aura.Monad.Aura
import Aura.Core

---

install :: [String] -> [String] -> Aura ()
install pacOpts pkgs = I.install b filterABSPkgs pacOpts pkgs
    where b = buildable :: String -> Aura ABSPkg  -- Force the type.
