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



package body org.allbinary.graphics.opengles.OpenGLFeature_Package is

   procedure Initialize_Fields (This : in out OpenGLFeature'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out OpenGLFeature'Class; name : Unbounded_String) is
   begin
        Feature_Package.Initialize (This, name);
   end Initialize;

   function Create (name : Unbounded_String) return OpenGLFeature_Access is
      This : constant OpenGLFeature_Access := new OpenGLFeature;
   begin
      OpenGLFeature_Package.Initialize (This.all, name);
      return This;
   end Create;

end org.allbinary.graphics.opengles.OpenGLFeature_Package;


