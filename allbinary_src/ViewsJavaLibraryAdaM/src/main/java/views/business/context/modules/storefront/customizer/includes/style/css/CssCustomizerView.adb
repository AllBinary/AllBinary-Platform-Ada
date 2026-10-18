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


with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package body views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   procedure Initialize_Fields (This : in out CssCustomizerView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.styleValidationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssCustomizerView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CssCustomizerView_Access is
      This : constant CssCustomizerView_Access := new CssCustomizerView;
   begin
      CssCustomizerView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure addDomNodeInterfaces (This : in out CssCustomizerView) is
   begin
        CssCustomizerView'Class (This).addDomNodeInterface (DomNodeInterface_Access (This.styleValidationInterface));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out CssCustomizerView) return Unbounded_String is
   begin
        begin
            CssCustomizerView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CssCustomizerView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package;


