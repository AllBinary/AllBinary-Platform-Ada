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


package body views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package is

   procedure Initialize_Fields (This : in out CssCustomizerView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.styleValidationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssCustomizerView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return CssCustomizerView_Access is
      This : constant CssCustomizerView_Access := new CssCustomizerView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out CssCustomizerView) is
   begin
        This.addDomNodeInterface (DomNodeInterface_Access (This.styleValidationInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out CssCustomizerView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure view (This : in out CssCustomizerView) is
      Java_Result : constant Unbounded_String := CssCustomizerView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package;


