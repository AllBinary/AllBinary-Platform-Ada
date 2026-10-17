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


package body views.admin.storefront.StoreFrontComponent_Package is

   procedure Initialize_Fields (This : in out StoreFrontComponent'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontComponent'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.newStoreFrontInterface := StoreFrontInterface_Access (StoreFront_Package.Create (HttpServletRequest_Access (This.getPageContext.getRequest)));
        if (This.newStoreFrontInterface.getName) = (Null_Unbounded_String) then
            This.newStoreFrontInterface.setName (This.getWeblisketSession.getStoreName);
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return StoreFrontComponent_Access is
      This : constant StoreFrontComponent_Access := new StoreFrontComponent;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out StoreFrontComponent) return Unbounded_String is
   begin
        begin
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure view (This : in out StoreFrontComponent) is
      Java_Result : constant Unbounded_String := StoreFrontComponent'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.admin.storefront.StoreFrontComponent_Package;


