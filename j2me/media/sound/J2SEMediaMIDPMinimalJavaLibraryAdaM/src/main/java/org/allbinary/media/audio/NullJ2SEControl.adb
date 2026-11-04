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


with org.allbinary.media.audio.Type_Package; use org.allbinary.media.audio.Type_Package;
with org.allbinary.media.audio.Type_Package_References;

package body org.allbinary.media.audio.NullJ2SEControl_Package is

   subtype Type_Access is org.allbinary.media.audio.Type_Package_References.Type_Access;
   function "=" (Left, Right : Type_Access) return Boolean renames org.allbinary.media.audio.Type_Package_References."=";
   subtype Type_Access_Array is org.allbinary.media.audio.Type_Package_References.Type_Access_Array;
   function "=" (Left, Right : Type_Access_Array) return Boolean renames org.allbinary.media.audio.Type_Package_References."=";
   subtype Type_Access_Array_Access is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access;
   function "=" (Left, Right : Type_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Type_Package_References."=";
   subtype Type_Access_Array_Access_Array is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access_Array;
   function "=" (Left, Right : Type_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Type_Package_References."=";
   subtype Type_Access_Array_Access_Array_Access is org.allbinary.media.audio.Type_Package_References.Type_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Type_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Type_Package_References."=";
   procedure Initialize_Fields (This : in out NullJ2SEControl'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullJ2SEControl'Class; type_Id_Param : access Type_Package.Type'Class) is
      type_Id : constant Type_Access := Type_Access (type_Id_Param);
   begin
        null;
   end Initialize;

   function Create (type_Id_Param : access Type_Package.Type'Class) return NullJ2SEControl_Access is
      This : constant NullJ2SEControl_Access := new NullJ2SEControl;
   begin
      NullJ2SEControl_Package.Initialize (This.all, type_Id_Param);
      return This;
   end Create;

end org.allbinary.media.audio.NullJ2SEControl_Package;


