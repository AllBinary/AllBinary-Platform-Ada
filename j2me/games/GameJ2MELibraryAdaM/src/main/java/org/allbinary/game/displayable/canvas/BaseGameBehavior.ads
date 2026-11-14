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
limited with org.allbinary.game.displayable.canvas.BaseGameBehavior_Package;
package org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References is
   type BaseGameBehavior_Access is access all org.allbinary.game.displayable.canvas.BaseGameBehavior_Package.BaseGameBehavior'Class;
   type BaseGameBehavior_Access_Array is array (Natural range <>) of BaseGameBehavior_Access;
   type BaseGameBehavior_Access_Array_Access is access all BaseGameBehavior_Access_Array;
   type BaseGameBehavior_Access_Array_Access_Array is array (Natural range <>) of BaseGameBehavior_Access_Array_Access;
   type BaseGameBehavior_Access_Array_Access_Array_Access is access all BaseGameBehavior_Access_Array_Access_Array;
   type BaseGameBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameBehavior_Access_Array_Access is (if Value /= null and then Value.all in BaseGameBehavior_Access_Array_Object'Class then BaseGameBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type BaseGameBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseGameBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseGameBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseGameBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseGameBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseGameBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseGameBehavior_Access_Array_Access_Array_Object'Class then BaseGameBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References;

with org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package; use org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;

package org.allbinary.game.displayable.canvas.BaseGameBehavior_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
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


   subtype BaseGameBehavior_Access is org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.BaseGameBehavior_Access;
   function "=" (Left, Right : BaseGameBehavior_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References."=";
   subtype BaseGameBehavior_Access_Array is org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.BaseGameBehavior_Access_Array;
   function "=" (Left, Right : BaseGameBehavior_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References."=";
   subtype BaseGameBehavior_Access_Array_Access is org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.BaseGameBehavior_Access_Array_Access;
   function "=" (Left, Right : BaseGameBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References."=";
   function Java_Box (Value : BaseGameBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.Java_Box;
   function Java_Unbox_BaseGameBehavior_Access_Array (Value : access Java_Object'Class) return BaseGameBehavior_Access_Array_Access renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.Java_Unbox_BaseGameBehavior_Access_Array;
   subtype BaseGameBehavior_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.BaseGameBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : BaseGameBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References."=";
   subtype BaseGameBehavior_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.BaseGameBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseGameBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References."=";
   function Java_Box (Value : BaseGameBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.Java_Box;
   function Java_Unbox_BaseGameBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseGameBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.BaseGameBehavior_Package_References.Java_Unbox_BaseGameBehavior_Access_Array_Access_Array;

   type BaseGameBehavior is new DemoGameBehavior with null record;
   instanceC : BaseGameBehavior_Access;

   procedure Initialize (This : in out BaseGameBehavior'Class);
   function Create return BaseGameBehavior_Access;
   function getInstance return DemoGameBehavior_Access;
   procedure init (This : in out BaseGameBehavior);
   procedure pause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure unPause (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateTouch (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateScreenButtonPaintable (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure setGameState (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure removeAllGameKeyInputListeners (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure updateEndGameProcessor (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure buildGame (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure run (This : in out BaseGameBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class);
   procedure setHighScore (This : in out BaseGameBehavior; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean);

end org.allbinary.game.displayable.canvas.BaseGameBehavior_Package;


