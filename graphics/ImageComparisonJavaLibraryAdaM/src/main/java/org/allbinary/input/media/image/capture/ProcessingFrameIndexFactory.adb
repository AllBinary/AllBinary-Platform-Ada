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


package body org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package is

   procedure Initialize_Fields (This : in out ProcessingFrameIndexFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ProcessingFrameIndexFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ProcessingFrameIndexFactory_Access is
      This : constant ProcessingFrameIndexFactory_Access := new ProcessingFrameIndexFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function next return Long_Long_Integer is
   begin
        return Java_Post_Increment (ProcessingFrameIndexFactory_Package.currentFrame);
   end next;

   procedure next is
      Java_Result : constant Long_Long_Integer := next;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end next;

begin
   null;
   currentFrame := 0;

end org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory_Package;


