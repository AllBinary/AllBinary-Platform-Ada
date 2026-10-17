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


package body org.allbinary.graphics.pipeline.RandomRotationFactory_Package is

   procedure Initialize_Fields (This : in out RandomRotationFactory'Class) is
   begin
      null;
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
      This.angleFactory := AngleFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out RandomRotationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RandomRotationFactory_Access is
      This : constant RandomRotationFactory_Access := new RandomRotationFactory;
   begin
      RandomRotationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RandomRotationFactory_Access is
   begin
        return RandomRotationFactory_Package.instance;
   end getInstance;

   --  throws Exception
   function getInstanceList (This : in out RandomRotationFactory; vector : BasicArrayList_Access; howMuch : Integer) return BasicArrayList_Access is
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (vector);
        graphicsPipe.createMatrix;
        graphicsPipe.rotateToAngle (This.angleFactory.getAt (This.getNextRandomAngle (howMuch)));
        return graphicsPipe.getMatrix;
   end getInstanceList;

   function getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) return Integer is
   begin
        return This.myRandomFactory.getNextInt ((howMuch) * (10));
   end getNextRandomAngle;

   procedure getInstanceList (This : in out RandomRotationFactory; vector : BasicArrayList_Access; howMuch : Integer) is
      Java_Result : constant BasicArrayList_Access := RandomRotationFactory'Class (This).getInstanceList (vector, howMuch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceList;

   procedure getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) is
      Java_Result : constant Integer := RandomRotationFactory'Class (This).getNextRandomAngle (howMuch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextRandomAngle;

begin
   null;
   instance := RandomRotationFactory_Package.Create;

end org.allbinary.graphics.pipeline.RandomRotationFactory_Package;


