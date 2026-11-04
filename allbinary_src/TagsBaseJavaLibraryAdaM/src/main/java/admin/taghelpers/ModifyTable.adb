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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with tags.TagStrings_Package; use tags.TagStrings_Package;
with tags.TagStrings_Package_References;

package body admin.taghelpers.ModifyTable_Package is

   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype TagStrings_Access is tags.TagStrings_Package_References.TagStrings_Access;
   function "=" (Left, Right : TagStrings_Access) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   procedure Initialize_Fields (This : in out ModifyTable'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tagStrings := TagStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ModifyTable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ModifyTable_Access is
      This : constant ModifyTable_Access := new ModifyTable;
   begin
      ModifyTable_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function insert (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end insert;

   --  throws Exception
   function delete (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end delete;

   --  throws Exception
   function update (This : in out ModifyTable) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return Null_Unbounded_String;
   end update;

end admin.taghelpers.ModifyTable_Package;


