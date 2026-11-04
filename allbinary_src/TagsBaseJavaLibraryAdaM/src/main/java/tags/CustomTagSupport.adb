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
with tags.TagStrings_Package;

package body tags.CustomTagSupport_Package is

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
   procedure Initialize_Fields (This : in out CustomTagSupport'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.tagStrings := TagStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomTagSupport'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomTagSupport_Access is
      This : constant CustomTagSupport_Access := new CustomTagSupport;
   begin
      CustomTagSupport_Package.Initialize (This.all);
      return This;
   end Create;


end tags.CustomTagSupport_Package;


