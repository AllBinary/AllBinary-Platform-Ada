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


package body org.allbinary.logic.visual.media.MediaTypeData_Package is

   procedure Initialize_Fields (This : in out MediaTypeData'Class) is
   begin
      null;
      This.RESIZABLE_MEDIA := To_Unbounded_String ("RESIZABLE_MEDIA");
      This.NOT_RESIZABLE_MEDIA := To_Unbounded_String ("NOT_RESIZABLE_MEDIA");
   end Initialize_Fields;


   function getInstance return MediaTypeData_Access is
   begin
        return MediaTypeData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out MediaTypeData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MediaTypeData_Access is
      This : constant MediaTypeData_Access := new MediaTypeData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant MediaTypeData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := MediaTypeData_Package.Create;

end org.allbinary.logic.visual.media.MediaTypeData_Package;


