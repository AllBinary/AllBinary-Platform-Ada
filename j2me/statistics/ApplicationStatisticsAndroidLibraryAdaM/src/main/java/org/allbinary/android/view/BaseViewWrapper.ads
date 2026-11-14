-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.android.view.BaseViewWrapper_Package;
package org.allbinary.android.view.BaseViewWrapper_Package_References is
   type BaseViewWrapper_Access is access all org.allbinary.android.view.BaseViewWrapper_Package.BaseViewWrapper'Class;
   type BaseViewWrapper_Access_Array is array (Natural range <>) of BaseViewWrapper_Access;
   type BaseViewWrapper_Access_Array_Access is access all BaseViewWrapper_Access_Array;
   type BaseViewWrapper_Access_Array_Access_Array is array (Natural range <>) of BaseViewWrapper_Access_Array_Access;
   type BaseViewWrapper_Access_Array_Access_Array_Access is access all BaseViewWrapper_Access_Array_Access_Array;
   type BaseViewWrapper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseViewWrapper_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseViewWrapper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseViewWrapper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseViewWrapper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseViewWrapper_Access_Array_Access is (if Value /= null and then Value.all in BaseViewWrapper_Access_Array_Object'Class then BaseViewWrapper_Access_Array_Object'Class (Value.all).Value else null);
   type BaseViewWrapper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseViewWrapper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseViewWrapper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseViewWrapper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseViewWrapper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseViewWrapper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseViewWrapper_Access_Array_Access_Array_Object'Class then BaseViewWrapper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.view.BaseViewWrapper_Package_References;

with org.allbinary.android.view.BaseViewWrapper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.android.view.BaseViewWrapper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BaseViewWrapper_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access;
   function "=" (Left, Right : BaseViewWrapper_Access) return Boolean renames org.allbinary.android.view.BaseViewWrapper_Package_References."=";
   subtype BaseViewWrapper_Access_Array is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array;
   function "=" (Left, Right : BaseViewWrapper_Access_Array) return Boolean renames org.allbinary.android.view.BaseViewWrapper_Package_References."=";
   subtype BaseViewWrapper_Access_Array_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access;
   function "=" (Left, Right : BaseViewWrapper_Access_Array_Access) return Boolean renames org.allbinary.android.view.BaseViewWrapper_Package_References."=";
   function Java_Box (Value : BaseViewWrapper_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.view.BaseViewWrapper_Package_References.Java_Box;
   function Java_Unbox_BaseViewWrapper_Access_Array (Value : access Java_Object'Class) return BaseViewWrapper_Access_Array_Access renames org.allbinary.android.view.BaseViewWrapper_Package_References.Java_Unbox_BaseViewWrapper_Access_Array;
   subtype BaseViewWrapper_Access_Array_Access_Array is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access_Array;
   function "=" (Left, Right : BaseViewWrapper_Access_Array_Access_Array) return Boolean renames org.allbinary.android.view.BaseViewWrapper_Package_References."=";
   subtype BaseViewWrapper_Access_Array_Access_Array_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseViewWrapper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.view.BaseViewWrapper_Package_References."=";
   function Java_Box (Value : BaseViewWrapper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.view.BaseViewWrapper_Package_References.Java_Box;
   function Java_Unbox_BaseViewWrapper_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseViewWrapper_Access_Array_Access_Array_Access renames org.allbinary.android.view.BaseViewWrapper_Package_References.Java_Unbox_BaseViewWrapper_Access_Array_Access_Array;

   type BaseViewWrapper is new Java_Object with null record;
   NULL_VIEW_WRAPPER : BaseViewWrapper_Access;

   procedure Initialize (This : in out BaseViewWrapper'Class);
   function Create return BaseViewWrapper_Access;
   procedure invalidate (This : in out BaseViewWrapper);
   procedure postInvalidate (This : in out BaseViewWrapper);

end org.allbinary.android.view.BaseViewWrapper_Package;


