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


with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleFactory_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;

package body org.allbinary.graphics.pipeline.RandomRotationFactory_Package is

   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   function "=" (Left, Right : MyRandomFactory_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype AngleFactory_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access;
   function "=" (Left, Right : AngleFactory_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
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
        return RandomRotationFactory_Access (RandomRotationFactory_Package.instance);
   end getInstance;

   --  throws Exception
   function getInstanceList (This : in out RandomRotationFactory; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer) return BasicArrayList_Access is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (vector);
        graphicsPipe.createMatrix;
        graphicsPipe.rotateToAngle (This.angleFactory.getAt (RandomRotationFactory'Class (This).getNextRandomAngle (howMuch)));
        return graphicsPipe.getMatrix;
   end getInstanceList;

   function getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) return Integer is
   begin
        return This.myRandomFactory.getNextInt ((howMuch) * (10));
   end getNextRandomAngle;

   procedure getInstanceList (This : in out RandomRotationFactory; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer) is
      Java_Result : constant BasicArrayList_Access := RandomRotationFactory'Class (This).getInstanceList (vector_Param => vector_Param, howMuch => howMuch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceList;

   procedure getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) is
      Java_Result : constant Integer := RandomRotationFactory'Class (This).getNextRandomAngle (howMuch => howMuch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextRandomAngle;

begin
   null;
   instance := RandomRotationFactory_Package.Create;

end org.allbinary.graphics.pipeline.RandomRotationFactory_Package;


