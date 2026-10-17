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


package body org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package is

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
   function getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle : Rectangle_Access; formType : FormType_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollSelectionForm_Access is
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        if Features_Package.getInstance.isFeature (TouchFeatureFactory_Package.getInstance.TOUCH_ENABLED) then
            scrollSelectionForm := CommandCurrentSelectionForm_Package.Create (title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
            scrollSelectionForm.init (rectangle, formType);
            return scrollSelectionForm;
        else
            return ScrollSelectionFormNoneFactory_Package.getInstance;
        end if;
   end getInstance;

   procedure getInstance (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle : Rectangle_Access; formType : FormType_Access; border : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      Java_Result : constant ScrollSelectionForm_Access := getInstance (title, items, rectangle, formType, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;


