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


with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;

package body org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package is

   subtype InputMappingInterface_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access;
   function "=" (Left, Right : InputMappingInterface_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype ProcessPaintable_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access;
   function "=" (Left, Right : ProcessPaintable_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   subtype ProcessPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.ProcessPaintable_Package_References.ProcessPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProcessPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.ProcessPaintable_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonsPaintableCompositeFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonsPaintableCompositeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonsPaintableCompositeFactory_Access is
      This : constant TouchButtonsPaintableCompositeFactory_Access := new TouchButtonsPaintableCompositeFactory;
   begin
      TouchButtonsPaintableCompositeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return ProcessPaintable_Access is
      inputMappingInterface : constant InputMappingInterface_Access := InputMappingInterface_Access (inputMappingInterface_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        return ProcessPaintable_Package.Create;
   end getInstance;

   procedure getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant ProcessPaintable_Access := getInstance (inputMappingInterface_Param => inputMappingInterface_Param, basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;


