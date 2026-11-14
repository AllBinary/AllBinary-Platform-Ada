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

with AllBinary_Java;
limited with org.allbinary.game.layer.resources.BasicGameResources_Package;
package org.allbinary.game.layer.resources.BasicGameResources_Package_References is
   type BasicGameResources_Access is access all org.allbinary.game.layer.resources.BasicGameResources_Package.BasicGameResources'Class;
   type BasicGameResources_Access_Array is array (Natural range <>) of BasicGameResources_Access;
   type BasicGameResources_Access_Array_Access is access all BasicGameResources_Access_Array;
   type BasicGameResources_Access_Array_Access_Array is array (Natural range <>) of BasicGameResources_Access_Array_Access;
   type BasicGameResources_Access_Array_Access_Array_Access is access all BasicGameResources_Access_Array_Access_Array;
   type BasicGameResources_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGameResources_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGameResources_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGameResources_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGameResources_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGameResources_Access_Array_Access is (if Value /= null and then Value.all in BasicGameResources_Access_Array_Object'Class then BasicGameResources_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGameResources_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGameResources_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGameResources_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGameResources_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGameResources_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGameResources_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGameResources_Access_Array_Access_Array_Object'Class then BasicGameResources_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.resources.BasicGameResources_Package_References;

with org.allbinary.game.layer.resources.BasicGameResources_Package_References;
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
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;

package org.allbinary.game.layer.resources.BasicGameResources_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicGameResources_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access;
   function "=" (Left, Right : BasicGameResources_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array;
   function "=" (Left, Right : BasicGameResources_Access_Array) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   function Java_Box (Value : BasicGameResources_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.BasicGameResources_Package_References.Java_Box;
   function Java_Unbox_BasicGameResources_Access_Array (Value : access Java_Object'Class) return BasicGameResources_Access_Array_Access renames org.allbinary.game.layer.resources.BasicGameResources_Package_References.Java_Unbox_BasicGameResources_Access_Array;
   subtype BasicGameResources_Access_Array_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   subtype BasicGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGameResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.resources.BasicGameResources_Package_References."=";
   function Java_Box (Value : BasicGameResources_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.resources.BasicGameResources_Package_References.Java_Box;
   function Java_Unbox_BasicGameResources_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGameResources_Access_Array_Access_Array_Access renames org.allbinary.game.layer.resources.BasicGameResources_Package_References.Java_Unbox_BasicGameResources_Access_Array_Access_Array;

   type BasicGameResources is new Java_Object with record
      logUtil : LogUtil_Access;
      RESOURCE : Unbounded_String;
      RESOURCE_DESTROY : Unbounded_String;
   end record;
   stringBuffer : StringMaker_Access;

   procedure Initialize (This : in out BasicGameResources'Class);
   function Create return BasicGameResources_Access;
   procedure init (This : in out BasicGameResources; ROOT : Unbounded_String; SIZE : Unbounded_String_Array_Access);
   procedure append (This : in out BasicGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out BasicGameResources) return Unbounded_String;

end org.allbinary.game.layer.resources.BasicGameResources_Package;


