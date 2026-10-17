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


package body org.allbinary.graphics.opengles.renderer.RendererStrings_Package is

   procedure Initialize_Fields (This : in out RendererStrings'Class) is
   begin
      null;
      This.ON_SURFACE_CREATED := To_Unbounded_String ("onSurfaceCreated");
      This.ON_SURFACE_CHANGED := To_Unbounded_String ("onSurfaceChanged");
      This.ON_DRAW_FRAME := To_Unbounded_String ("onDrawFrame");
      This.ON_DRAW_FRAME_THREED := To_Unbounded_String ("onDrawFrameThreed");
      This.ON_DRAW_FRAME_2D := To_Unbounded_String ("onDrawFrame2d");
   end Initialize_Fields;

   procedure Initialize (This : in out RendererStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RendererStrings_Access is
      This : constant RendererStrings_Access := new RendererStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return RendererStrings_Access is
   begin
        return RendererStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant RendererStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := RendererStrings_Package.Create;

end org.allbinary.graphics.opengles.renderer.RendererStrings_Package;


