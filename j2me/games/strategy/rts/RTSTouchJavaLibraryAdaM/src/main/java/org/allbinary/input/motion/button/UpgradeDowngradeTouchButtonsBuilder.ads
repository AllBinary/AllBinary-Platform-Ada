-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
with org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package; use org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;
with org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package; use org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package is

   package TouchButtonDowngradeResource_Package renames Standard.org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;
   package TouchButtonUpgradeResource_Package renames Standard.org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;

   type UpgradeDowngradeTouchButtonsBuilder is tagged;
   type UpgradeDowngradeTouchButtonsBuilder_Access is access all UpgradeDowngradeTouchButtonsBuilder'Class;
   type UpgradeDowngradeTouchButtonsBuilder_Access_Array is array (Natural range <>) of UpgradeDowngradeTouchButtonsBuilder_Access;
   type UpgradeDowngradeTouchButtonsBuilder_Access_Array_Access is access all UpgradeDowngradeTouchButtonsBuilder_Access_Array;

   type UpgradeDowngradeTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out UpgradeDowngradeTouchButtonsBuilder'Class);
   function Create return UpgradeDowngradeTouchButtonsBuilder_Access;
   function getList (This : in out UpgradeDowngradeTouchButtonsBuilder) return BasicArrayList_Access;
   procedure getList (This : in out UpgradeDowngradeTouchButtonsBuilder);

end org.allbinary.input.motion.button.UpgradeDowngradeTouchButtonsBuilder_Package;


