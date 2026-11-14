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
limited with org.allbinary.business.quoterequest.QuoteRequestData_Package;
package org.allbinary.business.quoterequest.QuoteRequestData_Package_References is
   type QuoteRequestData_Access is access all org.allbinary.business.quoterequest.QuoteRequestData_Package.QuoteRequestData'Class;
   type QuoteRequestData_Access_Array is array (Natural range <>) of QuoteRequestData_Access;
   type QuoteRequestData_Access_Array_Access is access all QuoteRequestData_Access_Array;
   type QuoteRequestData_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestData_Access_Array_Access;
   type QuoteRequestData_Access_Array_Access_Array_Access is access all QuoteRequestData_Access_Array_Access_Array;
   type QuoteRequestData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestData_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestData_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestData_Access_Array_Object'Class then QuoteRequestData_Access_Array_Object'Class (Value.all).Value else null);
   type QuoteRequestData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestData_Access_Array_Access_Array_Object'Class then QuoteRequestData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.quoterequest.QuoteRequestData_Package_References;

with org.allbinary.business.quoterequest.QuoteRequestData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.quoterequest.QuoteRequestData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype QuoteRequestData_Access is org.allbinary.business.quoterequest.QuoteRequestData_Package_References.QuoteRequestData_Access;
   function "=" (Left, Right : QuoteRequestData_Access) return Boolean renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References."=";
   subtype QuoteRequestData_Access_Array is org.allbinary.business.quoterequest.QuoteRequestData_Package_References.QuoteRequestData_Access_Array;
   function "=" (Left, Right : QuoteRequestData_Access_Array) return Boolean renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References."=";
   subtype QuoteRequestData_Access_Array_Access is org.allbinary.business.quoterequest.QuoteRequestData_Package_References.QuoteRequestData_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestData_Access_Array_Access) return Boolean renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References."=";
   function Java_Box (Value : QuoteRequestData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestData_Access_Array (Value : access Java_Object'Class) return QuoteRequestData_Access_Array_Access renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References.Java_Unbox_QuoteRequestData_Access_Array;
   subtype QuoteRequestData_Access_Array_Access_Array is org.allbinary.business.quoterequest.QuoteRequestData_Package_References.QuoteRequestData_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References."=";
   subtype QuoteRequestData_Access_Array_Access_Array_Access is org.allbinary.business.quoterequest.QuoteRequestData_Package_References.QuoteRequestData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References."=";
   function Java_Box (Value : QuoteRequestData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestData_Access_Array_Access_Array (Value : access Java_Object'Class) return QuoteRequestData_Access_Array_Access_Array_Access renames org.allbinary.business.quoterequest.QuoteRequestData_Package_References.Java_Unbox_QuoteRequestData_Access_Array_Access_Array;

   type QuoteRequestData is new Java_Object with record
      ID : Unbounded_String;
      PROJECT_INFO : Unbounded_String;
      CUSTOMER_COMMENTS : Unbounded_String;
      BUDGET : Unbounded_String;
      TIMEFRAME : Unbounded_String;
      COMMENTS : Unbounded_String;
   end record;
   instance : QuoteRequestData_Access;

   procedure Initialize (This : in out QuoteRequestData'Class);
   function Create return QuoteRequestData_Access;
   function getInstance return QuoteRequestData_Access;

end org.allbinary.business.quoterequest.QuoteRequestData_Package;


