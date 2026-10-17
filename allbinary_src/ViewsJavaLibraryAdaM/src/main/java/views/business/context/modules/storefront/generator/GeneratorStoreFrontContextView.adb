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


package body views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package is

   procedure Initialize_Fields (This : in out GeneratorStoreFrontContextView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GeneratorStoreFrontContextView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return GeneratorStoreFrontContextView_Access is
      This : constant GeneratorStoreFrontContextView_Access := new GeneratorStoreFrontContextView;
   begin
      Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out GeneratorStoreFrontContextView; group : Unbounded_String) return Unbounded_String is
      result : Unbounded_String;
   begin
        result := TransformsGeneratorUtil_Package.getInstance.generateComponentsFromObjectConfig (This.abeClientInformation, This.getTransformInfoInterface, group);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPEXTRAOUTPUT) then
            return result;
        else
            return StringUtil_Package.getInstance.EMPTY_STRING;
        end if;
   end view;

   --  throws Exception
   function view (This : in out GeneratorStoreFrontContextView) return Unbounded_String is
   begin
        begin
            return This.view (TransformInfosData_Package.getInstance.ALL_Id);
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
        end;
   end view;

   procedure view (This : in out GeneratorStoreFrontContextView; group : Unbounded_String) is
      Java_Result : constant Unbounded_String := GeneratorStoreFrontContextView'Class (This).view (group);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

   procedure view (This : in out GeneratorStoreFrontContextView) is
      Java_Result : constant Unbounded_String := GeneratorStoreFrontContextView'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end views.business.context.modules.storefront.generator.GeneratorStoreFrontContextView_Package;


