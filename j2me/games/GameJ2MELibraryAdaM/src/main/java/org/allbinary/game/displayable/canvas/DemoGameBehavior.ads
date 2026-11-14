-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
package org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References is
   type DemoGameBehavior_Access is access all org.allbinary.game.displayable.canvas.DemoGameBehavior_Package.DemoGameBehavior'Class;
   type DemoGameBehavior_Access_Array is array (Natural range <>) of DemoGameBehavior_Access;
   type DemoGameBehavior_Access_Array_Access is access all DemoGameBehavior_Access_Array;
   type DemoGameBehavior_Access_Array_Access_Array is array (Natural range <>) of DemoGameBehavior_Access_Array_Access;
   type DemoGameBehavior_Access_Array_Access_Array_Access is access all DemoGameBehavior_Access_Array_Access_Array;
   type DemoGameBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameBehavior_Access_Array_Access is (if Value /= null and then Value.all in DemoGameBehavior_Access_Array_Object'Class then DemoGameBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameBehavior_Access_Array_Access_Array_Object'Class then DemoGameBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References;

with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.DemoGameBehavior_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   use type AllBinaryGameCanvas_Access;
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   use type AllBinaryGameCanvas_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   use type AllBinaryGameCanvas_Access_Array_Access_Array;
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameBehavior_Access is org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.DemoGameBehavior_Access;
   function "=" (Left, Right : DemoGameBehavior_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References."=";
   subtype DemoGameBehavior_Access_Array is org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.DemoGameBehavior_Access_Array;
   function "=" (Left, Right : DemoGameBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References."=";
   subtype DemoGameBehavior_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.DemoGameBehavior_Access_Array_Access;
   function "=" (Left, Right : DemoGameBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References."=";
   function Java_Box (Value : DemoGameBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.Java_Box;
   function Java_Unbox_DemoGameBehavior_Access_Array (Value : access Java_Object'Class) return DemoGameBehavior_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.Java_Unbox_DemoGameBehavior_Access_Array;
   subtype DemoGameBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.DemoGameBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References."=";
   subtype DemoGameBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.DemoGameBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References."=";
   function Java_Box (Value : DemoGameBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.Java_Box;
   function Java_Unbox_DemoGameBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoGameBehavior_Package_References.Java_Unbox_DemoGameBehavior_Access_Array_Access_Array;

   type DemoGameBehavior is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : DemoGameBehavior_Access;

   procedure Initialize (This : in out DemoGameBehavior'Class);
   function Create return DemoGameBehavior_Access;
   function getInstance return DemoGameBehavior_Access;
   procedure init (This : in out DemoGameBehavior);
   procedure pause (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure unPause (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateTouch (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateScreenButtonPaintable (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure setGameState (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure removeAllGameKeyInputListeners (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateEndGameProcessor (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure buildGame (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure run (This : in out DemoGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure setHighScore (This : in out DemoGameBehavior; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean);

end org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;


