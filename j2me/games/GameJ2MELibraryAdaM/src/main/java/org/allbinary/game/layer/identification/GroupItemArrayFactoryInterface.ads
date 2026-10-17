--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type GroupItemArrayFactoryInterface is interface;
   type GroupItemArrayFactoryInterface_Access is access all GroupItemArrayFactoryInterface'Class;
   type GroupItemArrayFactoryInterface_Access_Array is array (Natural range <>) of GroupItemArrayFactoryInterface_Access;
   type GroupItemArrayFactoryInterface_Access_Array_Access is access all GroupItemArrayFactoryInterface_Access_Array;
   function getInstance (This : in out GroupItemArrayFactoryInterface; groupInterface : Group_Access) return ABCustomItem_Access_Array_Access is abstract;

end org.allbinary.game.layer.identification.GroupItemArrayFactoryInterface_Package;


