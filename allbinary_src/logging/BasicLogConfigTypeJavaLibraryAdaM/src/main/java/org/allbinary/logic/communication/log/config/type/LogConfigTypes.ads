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
limited with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References is
   type LogConfigTypes_Access is access all org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package.LogConfigTypes'Class;
   type LogConfigTypes_Access_Array is array (Natural range <>) of LogConfigTypes_Access;
   type LogConfigTypes_Access_Array_Access is access all LogConfigTypes_Access_Array;
   type LogConfigTypes_Access_Array_Access_Array is array (Natural range <>) of LogConfigTypes_Access_Array_Access;
   type LogConfigTypes_Access_Array_Access_Array_Access is access all LogConfigTypes_Access_Array_Access_Array;
   type LogConfigTypes_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypes_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypes_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypes_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypes_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypes_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypes_Access_Array_Object'Class then LogConfigTypes_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfigTypes_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfigTypes_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfigTypes_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfigTypes_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfigTypes_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfigTypes_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfigTypes_Access_Array_Access_Array_Object'Class then LogConfigTypes_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References;

with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogConfigTypes_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access;
   function "=" (Left, Right : LogConfigTypes_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array;
   function "=" (Left, Right : LogConfigTypes_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   function Java_Box (Value : LogConfigTypes_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypes_Access_Array (Value : access Java_Object'Class) return LogConfigTypes_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.Java_Unbox_LogConfigTypes_Access_Array;
   subtype LogConfigTypes_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   subtype LogConfigTypes_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.LogConfigTypes_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfigTypes_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References."=";
   function Java_Box (Value : LogConfigTypes_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.Java_Box;
   function Java_Unbox_LogConfigTypes_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfigTypes_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package_References.Java_Unbox_LogConfigTypes_Access_Array_Access_Array;

   type LogConfigTypes is new Java_Object with null record;
   LOGGING : BasicArrayList_Access;

   procedure Initialize (This : in out LogConfigTypes'Class);
   function Create return LogConfigTypes_Access;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;


