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
limited with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References is
   type QuoteRequestEntityFactory_Access is access all org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package.QuoteRequestEntityFactory'Class;
   type QuoteRequestEntityFactory_Access_Array is array (Natural range <>) of QuoteRequestEntityFactory_Access;
   type QuoteRequestEntityFactory_Access_Array_Access is access all QuoteRequestEntityFactory_Access_Array;
   type QuoteRequestEntityFactory_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestEntityFactory_Access_Array_Access;
   type QuoteRequestEntityFactory_Access_Array_Access_Array_Access is access all QuoteRequestEntityFactory_Access_Array_Access_Array;
   type QuoteRequestEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestEntityFactory_Access_Array_Object'Class then QuoteRequestEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type QuoteRequestEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestEntityFactory_Access_Array_Access_Array_Object'Class then QuoteRequestEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References;

with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References;
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
limited with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References;

package org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype QuoteRequestEntity_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access;
   use type QuoteRequestEntity_Access;
   subtype QuoteRequestEntity_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array;
   use type QuoteRequestEntity_Access_Array;
   subtype QuoteRequestEntity_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access;
   use type QuoteRequestEntity_Access_Array_Access;
   subtype QuoteRequestEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access_Array;
   use type QuoteRequestEntity_Access_Array_Access_Array;
   subtype QuoteRequestEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package_References.QuoteRequestEntity_Access_Array_Access_Array_Access;
   use type QuoteRequestEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype QuoteRequestEntityFactory_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.QuoteRequestEntityFactory_Access;
   function "=" (Left, Right : QuoteRequestEntityFactory_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References."=";
   subtype QuoteRequestEntityFactory_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.QuoteRequestEntityFactory_Access_Array;
   function "=" (Left, Right : QuoteRequestEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References."=";
   subtype QuoteRequestEntityFactory_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.QuoteRequestEntityFactory_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References."=";
   function Java_Box (Value : QuoteRequestEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestEntityFactory_Access_Array (Value : access Java_Object'Class) return QuoteRequestEntityFactory_Access_Array_Access renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.Java_Unbox_QuoteRequestEntityFactory_Access_Array;
   subtype QuoteRequestEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.QuoteRequestEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References."=";
   subtype QuoteRequestEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.QuoteRequestEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References."=";
   function Java_Box (Value : QuoteRequestEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return QuoteRequestEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package_References.Java_Unbox_QuoteRequestEntityFactory_Access_Array_Access_Array;

   type QuoteRequestEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : QuoteRequestEntityFactory_Access;

   procedure Initialize (This : in out QuoteRequestEntityFactory'Class);
   function Create return QuoteRequestEntityFactory_Access;
   function getInstance return QuoteRequestEntityFactory_Access;
   function getQuoteRequestEntityInstance (This : in out QuoteRequestEntityFactory) return QuoteRequestEntity_Access;

end org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;


