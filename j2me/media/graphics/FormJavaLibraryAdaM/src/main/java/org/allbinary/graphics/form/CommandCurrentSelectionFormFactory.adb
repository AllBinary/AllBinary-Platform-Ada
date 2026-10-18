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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package; use org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package; use org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package; use org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;

package body org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package TouchFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
   procedure Initialize_Fields (This : in out CommandCurrentSelectionFormFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CommandCurrentSelectionFormFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommandCurrentSelectionFormFactory_Access is
      This : constant CommandCurrentSelectionFormFactory_Access := new CommandCurrentSelectionFormFactory;
   begin
      CommandCurrentSelectionFormFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ScrollSelectionForm_Access is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      formType : constant FormType_Access := FormType_Access (formType_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        if Features_Package.getInstance.isFeature (TouchFeatureFactory_Package.getInstance.TOUCH_ENABLED) then
            scrollSelectionForm := ScrollSelectionForm_Access (CommandCurrentSelectionForm_Package.Create (title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor));
            scrollSelectionForm.init (rectangle, formType);
            return scrollSelectionForm;
        else
            return ScrollSelectionFormNoneFactory_Package.getInstance;
        end if;
   end getInstance;

   procedure getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant ScrollSelectionForm_Access := getInstance (title => title, items => items, rectangle_Param => rectangle_Param, formType_Param => formType_Param, border => border, moveForSmallScreen => moveForSmallScreen, backgroundBasicColor_Param => backgroundBasicColor_Param, foregroundBasicColor_Param => foregroundBasicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;


