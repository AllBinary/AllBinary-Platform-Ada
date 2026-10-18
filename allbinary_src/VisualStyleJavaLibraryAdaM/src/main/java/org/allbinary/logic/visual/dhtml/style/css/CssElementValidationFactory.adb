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


with org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementValidation_Package;

package body org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package is

   procedure Initialize_Fields (This : in out CssElementValidationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssElementValidationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssElementValidationFactory_Access is
      This : constant CssElementValidationFactory_Access := new CssElementValidationFactory;
   begin
      CssElementValidationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return ValidationInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        return ValidationInterface_Access (CssElementValidation_Package.Create (node));
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant ValidationInterface_Access := getInstance (node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package;


