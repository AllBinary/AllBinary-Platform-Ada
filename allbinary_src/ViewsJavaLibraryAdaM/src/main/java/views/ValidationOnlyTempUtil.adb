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


package body views.ValidationOnlyTempUtil_Package is

   procedure Initialize_Fields (This : in out ValidationOnlyTempUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ValidationOnlyTempUtil_Access is
   begin
        return ValidationOnlyTempUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ValidationOnlyTempUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ValidationOnlyTempUtil_Access is
      This : constant ValidationOnlyTempUtil_Access := new ValidationOnlyTempUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function view (This : in out ValidationOnlyTempUtil; validationComponentInterface : ValidationComponentInterface_Access) return Unbounded_String is
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("View Name: ") & validationComponentInterface.getTransformInfoInterface.getName, This'Unchecked_Access, To_Unbounded_String ("view()"));
            end if;
            return StringUtil_Package.getInstance.EMPTY_STRING;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure getInstance is
      Java_Result : constant ValidationOnlyTempUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure view (This : in out ValidationOnlyTempUtil; validationComponentInterface : ValidationComponentInterface_Access) is
      Java_Result : constant Unbounded_String := ValidationOnlyTempUtil'Class (This).view (validationComponentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

begin
   null;
   instance := ValidationOnlyTempUtil_Package.Create;

end views.ValidationOnlyTempUtil_Package;


