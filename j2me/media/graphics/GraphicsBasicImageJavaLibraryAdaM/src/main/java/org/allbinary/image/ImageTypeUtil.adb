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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.image.ImageTypeUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out ImageTypeUtil'Class) is
   begin
      null;
      This.PNG := To_Unbounded_String ("png");
      This.JPG := To_Unbounded_String ("jpg");
      This.GIF := To_Unbounded_String ("gif");
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out ImageTypeUtil'Class) is
   begin
      Initialize_Fields (This);
        This.list.add (Java_Box (This.JPG));
        This.list.add (Java_Box (This.GIF));
        This.list.add (Java_Box (This.PNG));
   end Initialize;

   function Create return ImageTypeUtil_Access is
      This : constant ImageTypeUtil_Access := new ImageTypeUtil;
   begin
      ImageTypeUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String) return Boolean is
      mediaFileType : Unbounded_String := mediaFileType_Param;
      name : Unbounded_String;
      index : Integer;
   begin
        mediaFileType := Translate (mediaFileType, Ada.Strings.Maps.Constants.Lower_Case_Map);
        for index in reverse 0 .. (This.list.size) - (1) loop
            name := Java_Unbox (This.list.get (index));
            if (Java_Compare_To (mediaFileType, name)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isSupported;

   function getInstance return ImageTypeUtil_Access is
   begin
        return ImageTypeUtil_Access (ImageTypeUtil_Package.SINGLETON);
   end getInstance;

   procedure isSupported (This : in out ImageTypeUtil; mediaFileType_Param : Unbounded_String) is
      Java_Result : constant Boolean := ImageTypeUtil'Class (This).isSupported (mediaFileType_Param => mediaFileType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSupported;

begin
   null;
   SINGLETON := ImageTypeUtil_Package.Create;

end org.allbinary.image.ImageTypeUtil_Package;


