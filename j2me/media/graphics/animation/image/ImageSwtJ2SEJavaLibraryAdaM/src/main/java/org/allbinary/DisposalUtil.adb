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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.eclipse.swt.graphics.Resource_Package; use org.eclipse.swt.graphics.Resource_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package body org.allbinary.DisposalUtil_Package is

   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
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
   subtype Resource_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access;
   function "=" (Left, Right : Resource_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array;
   function "=" (Left, Right : Resource_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array;
   function "=" (Left, Right : Resource_Access_Array_Access_Array) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   subtype Resource_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Resource_Package_References.Resource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Resource_Access_Array_Access_Array_Access) return Boolean renames org.eclipse.swt.graphics.Resource_Package_References."=";
   procedure Initialize_Fields (This : in out DisposalUtil'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out DisposalUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DisposalUtil_Access is
      This : constant DisposalUtil_Access := new DisposalUtil;
   begin
      DisposalUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DisposalUtil_Access is
   begin
        return DisposalUtil_Access (DisposalUtil_Package.instance);
   end getInstance;

   procedure disposeImage (This : in out DisposalUtil; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      mutableImage : SwtMutableImage_Access;
   begin
        if (image) = (null) then
            return;
        end if;
        if image.isMutable then
            mutableImage := SwtMutableImage_Access (image);
            DisposalUtil'Class (This).disposeResource (Resource_Access (mutableImage.getImage));
        else
            null;
        end if;
   end disposeImage;

   procedure disposeResource (This : in out DisposalUtil; resource_Param : access Resource_Package.Resource'Class) is
      resource : constant Resource_Access := Resource_Access (resource_Param);
   begin
        if not (resource.isDisposed) then
            Ada.Text_IO.Put_Line (Java_Image (This.commonStrings.CLOSE));
            resource.dispose;
        end if;
   end disposeResource;

begin
   null;
   instance := DisposalUtil_Package.Create;

end org.allbinary.DisposalUtil_Package;


