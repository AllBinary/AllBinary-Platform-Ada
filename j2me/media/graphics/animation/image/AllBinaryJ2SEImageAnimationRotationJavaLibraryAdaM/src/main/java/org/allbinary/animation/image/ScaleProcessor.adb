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


package body org.allbinary.animation.image.ScaleProcessor_Package is

   procedure Initialize_Fields (This : in out ScaleProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageScaleUtil := ImageScaleUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ScaleProcessor'Class) is
   begin
      ScaleBaseProcessor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ScaleProcessor_Access is
      This : constant ScaleProcessor_Access := new ScaleProcessor;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScaleBaseProcessor_Access is
   begin
        return ScaleProcessor_Package.instanceC;
   end getInstance;

   procedure update (This : in out ScaleProcessor; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float) is
   begin
        begin
            This.imageScaleUtil.scale2 (originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.UPDATE, e);
                end;
        end;
   end update;

   procedure getInstance is
      Java_Result : constant ScaleBaseProcessor_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instanceC := ScaleProcessor_Package.Create;

end org.allbinary.animation.image.ScaleProcessor_Package;


