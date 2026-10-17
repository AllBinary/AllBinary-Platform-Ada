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


package body org.allbinary.graphics.pipeline.RandomTranslation_Package is

   procedure Initialize_Fields (This : in out RandomTranslation'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RandomTranslation'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RandomTranslation_Access is
      This : constant RandomTranslation_Access := new RandomTranslation;
   begin
      RandomTranslation_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (vector : BasicArrayList_Access; howMuch : Integer) return BasicArrayList_Access is
      myRandomFactory : MyRandomFactory_Access;
      x : Integer;
      y : Integer;
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        myRandomFactory := MyRandomFactory_Package.getInstance;
        x := -(myRandomFactory.getNextInt (howMuch));
        y := myRandomFactory.getNextInt (howMuch);
        graphicsPipe := BasicGraphicsPipeline_Package.Create (vector);
        graphicsPipe.createMatrix;
        graphicsPipe.translate (x, y);
        return graphicsPipe.getMatrix;
   end getInstance;

   procedure getInstance (vector : BasicArrayList_Access; howMuch : Integer) is
      Java_Result : constant BasicArrayList_Access := getInstance (vector, howMuch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.pipeline.RandomTranslation_Package;


