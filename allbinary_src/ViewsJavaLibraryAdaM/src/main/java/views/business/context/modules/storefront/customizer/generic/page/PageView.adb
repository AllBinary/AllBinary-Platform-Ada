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


package body views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package is

   procedure Initialize_Fields (This : in out PageView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out PageView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, PageView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return PageView_Access is
      This : constant PageView_Access := new PageView;
   begin
      PageView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out PageView) return Unbounded_String is
   begin
        begin
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PageView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

end views.business.context.modules.storefront.customizer.generic_Id.page.PageView_Package;


