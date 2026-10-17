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


package body org.allbinary.logic.control.workflow.WorkFlowWrapper_Package is

   procedure Initialize_Fields (This : in out WorkFlowWrapper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowWrapper'Class; anyType : Java_Object_Access) is
   begin
      Initialize_Fields (This);
        This.anyType := anyType;
   end Initialize;

   function Create (anyType : Java_Object_Access) return WorkFlowWrapper_Access is
      This : constant WorkFlowWrapper_Access := new WorkFlowWrapper;
   begin
      Initialize (This.all, anyType);
      return This;
   end Create;

   function getWorkFlowObject (This : in out WorkFlowWrapper) return Java_Object_Access is
   begin
        return This.anyType;
   end getWorkFlowObject;

   --  throws Exception
   function getName (This : in out WorkFlowWrapper) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("getName"), null);
            result := Unbounded_String (method.invoke (This.anyType, null));
            return result;
        exception
            when e : others =>
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getName()"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
        end;
   end getName;

   --  throws Exception
   function getStoreName (This : in out WorkFlowWrapper) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("getStoreName"), null);
            result := Unbounded_String (method.invoke (This.anyType, null));
            return result;
        exception
            when e : others =>
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getStoreName()"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
        end;
   end getStoreName;

   --  throws Exception
   function process (This : in out WorkFlowWrapper) return Integer is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Integer;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.anyType.all'Tag;
            method := helperClass.getMethod (This.commonStrings.PROCESS, null);
            result := Integer (method.invoke (This.anyType, null));
            return result;
        exception
            when e : others =>
            error := To_Unbounded_String ("Reflection Exception");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.PROCESS, e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", error));
        end;
   end process;

   procedure getWorkFlowObject (This : in out WorkFlowWrapper) is
      Java_Result : constant Java_Object_Access := WorkFlowWrapper'Class (This).getWorkFlowObject;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWorkFlowObject;

   procedure getName (This : in out WorkFlowWrapper) is
      Java_Result : constant Unbounded_String := WorkFlowWrapper'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getStoreName (This : in out WorkFlowWrapper) is
      Java_Result : constant Unbounded_String := WorkFlowWrapper'Class (This).getStoreName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreName;

   procedure process (This : in out WorkFlowWrapper) is
      Java_Result : constant Integer := WorkFlowWrapper'Class (This).process;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end org.allbinary.logic.control.workflow.WorkFlowWrapper_Package;


