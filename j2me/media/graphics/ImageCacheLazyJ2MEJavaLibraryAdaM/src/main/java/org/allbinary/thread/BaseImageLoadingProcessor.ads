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
limited with org.allbinary.thread.BaseImageLoadingProcessor_Package;
package org.allbinary.thread.BaseImageLoadingProcessor_Package_References is
   type BaseImageLoadingProcessor_Access is access all org.allbinary.thread.BaseImageLoadingProcessor_Package.BaseImageLoadingProcessor'Class;
   type BaseImageLoadingProcessor_Access_Array is array (Natural range <>) of BaseImageLoadingProcessor_Access;
   type BaseImageLoadingProcessor_Access_Array_Access is access all BaseImageLoadingProcessor_Access_Array;
   type BaseImageLoadingProcessor_Access_Array_Access_Array is array (Natural range <>) of BaseImageLoadingProcessor_Access_Array_Access;
   type BaseImageLoadingProcessor_Access_Array_Access_Array_Access is access all BaseImageLoadingProcessor_Access_Array_Access_Array;
   type BaseImageLoadingProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseImageLoadingProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseImageLoadingProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseImageLoadingProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseImageLoadingProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseImageLoadingProcessor_Access_Array_Access is (if Value /= null and then Value.all in BaseImageLoadingProcessor_Access_Array_Object'Class then BaseImageLoadingProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type BaseImageLoadingProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseImageLoadingProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseImageLoadingProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseImageLoadingProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseImageLoadingProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseImageLoadingProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseImageLoadingProcessor_Access_Array_Access_Array_Object'Class then BaseImageLoadingProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.thread.BaseImageLoadingProcessor_Package_References;

with org.allbinary.thread.BaseImageLoadingProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.thread.BaseImageLoadingProcessor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BaseImageLoadingProcessor_Access is org.allbinary.thread.BaseImageLoadingProcessor_Package_References.BaseImageLoadingProcessor_Access;
   function "=" (Left, Right : BaseImageLoadingProcessor_Access) return Boolean renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References."=";
   subtype BaseImageLoadingProcessor_Access_Array is org.allbinary.thread.BaseImageLoadingProcessor_Package_References.BaseImageLoadingProcessor_Access_Array;
   function "=" (Left, Right : BaseImageLoadingProcessor_Access_Array) return Boolean renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References."=";
   subtype BaseImageLoadingProcessor_Access_Array_Access is org.allbinary.thread.BaseImageLoadingProcessor_Package_References.BaseImageLoadingProcessor_Access_Array_Access;
   function "=" (Left, Right : BaseImageLoadingProcessor_Access_Array_Access) return Boolean renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References."=";
   function Java_Box (Value : BaseImageLoadingProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References.Java_Box;
   function Java_Unbox_BaseImageLoadingProcessor_Access_Array (Value : access Java_Object'Class) return BaseImageLoadingProcessor_Access_Array_Access renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References.Java_Unbox_BaseImageLoadingProcessor_Access_Array;
   subtype BaseImageLoadingProcessor_Access_Array_Access_Array is org.allbinary.thread.BaseImageLoadingProcessor_Package_References.BaseImageLoadingProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BaseImageLoadingProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References."=";
   subtype BaseImageLoadingProcessor_Access_Array_Access_Array_Access is org.allbinary.thread.BaseImageLoadingProcessor_Package_References.BaseImageLoadingProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseImageLoadingProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References."=";
   function Java_Box (Value : BaseImageLoadingProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References.Java_Box;
   function Java_Unbox_BaseImageLoadingProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseImageLoadingProcessor_Access_Array_Access_Array_Access renames org.allbinary.thread.BaseImageLoadingProcessor_Package_References.Java_Unbox_BaseImageLoadingProcessor_Access_Array_Access_Array;

   type BaseImageLoadingProcessor is new Java_Object with null record;
   instance : BaseImageLoadingProcessor_Access;

   procedure Initialize (This : in out BaseImageLoadingProcessor'Class);
   function Create return BaseImageLoadingProcessor_Access;
   function getInstance return BaseImageLoadingProcessor_Access;
   procedure runTask (This : in out BaseImageLoadingProcessor);

end org.allbinary.thread.BaseImageLoadingProcessor_Package;


