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


with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;

package body tags.admin.WorkFlowsTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   procedure Initialize_Fields (This : in out WorkFlowsTag'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkFlowsTag'Class) is
   begin
      StoreValidationTransformTag_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WorkFlowsTag_Access is
      This : constant WorkFlowsTag_Access := new WorkFlowsTag;
   begin
      WorkFlowsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   function doStartTag (This : in out WorkFlowsTag) return Integer is
   begin
        begin
            if (WorkFlowsTag'Class (This).getCommand) /= (null) then
                if (WorkFlowsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.NEW_Id)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("New WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.NewView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("Add Validation WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.AddValidationView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("Validation WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.WorkflowsValidationView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.EDIT)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("Validation WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.EditValidationView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("Update Validation WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.UpdateValidationView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                    WorkFlowsTag'Class (This).setName (To_Unbounded_String ("Delete Validation WorkFlow View"));
                    WorkFlowsTag'Class (This).setObjectFile (To_Unbounded_String ("views.admin.workflow.DeleteValidationView"));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                elsif (WorkFlowsTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("View not implemented")));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (WorkFlowsTag'Class (This).getCommand)));
                end if;
                return StoreValidationTransformTag (This).doStartTag;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.admin.WorkFlowsTag_Package;


