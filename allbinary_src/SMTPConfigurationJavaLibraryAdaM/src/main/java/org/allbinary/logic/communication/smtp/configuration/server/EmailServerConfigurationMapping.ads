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
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;
package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References is
   type EmailServerConfigurationMapping_Access is access all org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package.EmailServerConfigurationMapping'Class;
   type EmailServerConfigurationMapping_Access_Array is array (Natural range <>) of EmailServerConfigurationMapping_Access;
   type EmailServerConfigurationMapping_Access_Array_Access is access all EmailServerConfigurationMapping_Access_Array;
   type EmailServerConfigurationMapping_Access_Array_Access_Array is array (Natural range <>) of EmailServerConfigurationMapping_Access_Array_Access;
   type EmailServerConfigurationMapping_Access_Array_Access_Array_Access is access all EmailServerConfigurationMapping_Access_Array_Access_Array;
   type EmailServerConfigurationMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailServerConfigurationMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailServerConfigurationMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailServerConfigurationMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailServerConfigurationMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailServerConfigurationMapping_Access_Array_Access is (if Value /= null and then Value.all in EmailServerConfigurationMapping_Access_Array_Object'Class then EmailServerConfigurationMapping_Access_Array_Object'Class (Value.all).Value else null);
   type EmailServerConfigurationMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmailServerConfigurationMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EmailServerConfigurationMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmailServerConfigurationMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmailServerConfigurationMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmailServerConfigurationMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EmailServerConfigurationMapping_Access_Array_Access_Array_Object'Class then EmailServerConfigurationMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References;

with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
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
   subtype EmailServerConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access;
   use type EmailServerConfigurationInterface_Access;
   subtype EmailServerConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype EmailServerConfigurationMapping_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.EmailServerConfigurationMapping_Access;
   function "=" (Left, Right : EmailServerConfigurationMapping_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References."=";
   subtype EmailServerConfigurationMapping_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.EmailServerConfigurationMapping_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationMapping_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References."=";
   subtype EmailServerConfigurationMapping_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.EmailServerConfigurationMapping_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationMapping_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References."=";
   function Java_Box (Value : EmailServerConfigurationMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_EmailServerConfigurationMapping_Access_Array (Value : access Java_Object'Class) return EmailServerConfigurationMapping_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.Java_Unbox_EmailServerConfigurationMapping_Access_Array;
   subtype EmailServerConfigurationMapping_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.EmailServerConfigurationMapping_Access_Array_Access_Array;
   function "=" (Left, Right : EmailServerConfigurationMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References."=";
   subtype EmailServerConfigurationMapping_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.EmailServerConfigurationMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailServerConfigurationMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References."=";
   function Java_Box (Value : EmailServerConfigurationMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.Java_Box;
   function Java_Unbox_EmailServerConfigurationMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return EmailServerConfigurationMapping_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package_References.Java_Unbox_EmailServerConfigurationMapping_Access_Array_Access_Array;

   type EmailServerConfigurationMapping is new Java_Object and TableMappingInterface with record
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out EmailServerConfigurationMapping'Class; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class);
   function Create (emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) return EmailServerConfigurationMapping_Access;
   function toHashMap (This : in out EmailServerConfigurationMapping) return HashMap_Access;
   function getKey (This : in out EmailServerConfigurationMapping) return Java_Object_Access;
   function toVector (This : in out EmailServerConfigurationMapping) return BasicArrayList_Access;

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;


