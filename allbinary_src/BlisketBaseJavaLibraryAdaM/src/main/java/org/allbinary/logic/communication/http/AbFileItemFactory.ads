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
limited with org.allbinary.logic.communication.http.AbFileItemFactory_Package;
package org.allbinary.logic.communication.http.AbFileItemFactory_Package_References is
   type AbFileItemFactory_Access is access all org.allbinary.logic.communication.http.AbFileItemFactory_Package.AbFileItemFactory'Class;
   type AbFileItemFactory_Access_Array is array (Natural range <>) of AbFileItemFactory_Access;
   type AbFileItemFactory_Access_Array_Access is access all AbFileItemFactory_Access_Array;
   type AbFileItemFactory_Access_Array_Access_Array is array (Natural range <>) of AbFileItemFactory_Access_Array_Access;
   type AbFileItemFactory_Access_Array_Access_Array_Access is access all AbFileItemFactory_Access_Array_Access_Array;
   type AbFileItemFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileItemFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileItemFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileItemFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileItemFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileItemFactory_Access_Array_Access is (if Value /= null and then Value.all in AbFileItemFactory_Access_Array_Object'Class then AbFileItemFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileItemFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileItemFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileItemFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileItemFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileItemFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileItemFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileItemFactory_Access_Array_Access_Array_Object'Class then AbFileItemFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.AbFileItemFactory_Package_References;

with org.allbinary.logic.communication.http.AbFileItemFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.apache.commons.fileupload.DefaultFileItemFactory_Package; use org.apache.commons.fileupload.DefaultFileItemFactory_Package;

package org.allbinary.logic.communication.http.AbFileItemFactory_Package is

   package DefaultFileItemFactory_Package renames Standard.org.apache.commons.fileupload.DefaultFileItemFactory_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbFileItemFactory_Access is org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.AbFileItemFactory_Access;
   function "=" (Left, Right : AbFileItemFactory_Access) return Boolean renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References."=";
   subtype AbFileItemFactory_Access_Array is org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.AbFileItemFactory_Access_Array;
   function "=" (Left, Right : AbFileItemFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References."=";
   subtype AbFileItemFactory_Access_Array_Access is org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.AbFileItemFactory_Access_Array_Access;
   function "=" (Left, Right : AbFileItemFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References."=";
   function Java_Box (Value : AbFileItemFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.Java_Box;
   function Java_Unbox_AbFileItemFactory_Access_Array (Value : access Java_Object'Class) return AbFileItemFactory_Access_Array_Access renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.Java_Unbox_AbFileItemFactory_Access_Array;
   subtype AbFileItemFactory_Access_Array_Access_Array is org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.AbFileItemFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileItemFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References."=";
   subtype AbFileItemFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.AbFileItemFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileItemFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References."=";
   function Java_Box (Value : AbFileItemFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.Java_Box;
   function Java_Unbox_AbFileItemFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileItemFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.AbFileItemFactory_Package_References.Java_Unbox_AbFileItemFactory_Access_Array_Access_Array;

   type AbFileItemFactory is new DefaultFileItemFactory with null record;

   procedure Initialize (This : in out AbFileItemFactory'Class);
   function Create return AbFileItemFactory_Access;

end org.allbinary.logic.communication.http.AbFileItemFactory_Package;


