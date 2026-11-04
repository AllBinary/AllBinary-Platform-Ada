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


with org.allbinary.graphics.form.item.ABTextFieldItem_Package; use org.allbinary.graphics.form.item.ABTextFieldItem_Package;
with org.allbinary.graphics.form.item.ABTextFieldItem_Package_References;

package body org.allbinary.graphics.form.item.validation.UsernameValidator_Package is

   subtype ABTextFieldItem_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access;
   function "=" (Left, Right : ABTextFieldItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   subtype ABTextFieldItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABTextFieldItem_Package_References.ABTextFieldItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABTextFieldItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABTextFieldItem_Package_References."=";
   procedure Initialize_Fields (This : in out UsernameValidator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UsernameValidator'Class; textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) is
      textFieldItem : constant ABTextFieldItem_Access := ABTextFieldItem_Access (textFieldItem_Param);
   begin
        TextFieldItemValidator_Package.Initialize (This, textFieldItem, min, max, allowOnEmpty);
   end Initialize;

   function Create (textFieldItem_Param : access ABTextFieldItem_Package.ABTextFieldItem'Class; min : Integer; max : Integer; allowOnEmpty : Boolean) return UsernameValidator_Access is
      This : constant UsernameValidator_Access := new UsernameValidator;
   begin
      UsernameValidator_Package.Initialize (This.all, textFieldItem_Param, min, max, allowOnEmpty);
      return This;
   end Create;

end org.allbinary.graphics.form.item.validation.UsernameValidator_Package;


