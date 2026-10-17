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


package body org.allbinary.graphics.GraphicsStrings_Package is

   procedure Initialize_Fields (This : in out GraphicsStrings'Class) is
   begin
      null;
      This.ANIMATION := To_Unbounded_String ("animation");
      This.ANGLE := To_Unbounded_String ("angle");
      This.MOVEMENT_ANGLE := To_Unbounded_String ("movement_angle");
      This.ROTATION := To_Unbounded_String ("rotation");
      This.OPACITY := To_Unbounded_String ("opacity");
      This.HTML := To_Unbounded_String ("HTML");
      This.WIDTH := To_Unbounded_String ("width");
      This.HEIGHT := To_Unbounded_String ("height");
   end Initialize_Fields;

   procedure Initialize (This : in out GraphicsStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GraphicsStrings_Access is
      This : constant GraphicsStrings_Access := new GraphicsStrings;
   begin
      GraphicsStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GraphicsStrings_Access is
   begin
        return GraphicsStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := GraphicsStrings_Package.Create;

end org.allbinary.graphics.GraphicsStrings_Package;


