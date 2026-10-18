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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package; use org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.smtp.EmailData_Package; use org.allbinary.logic.communication.smtp.EmailData_Package;
with org.allbinary.logic.communication.smtp.Email_Package; use org.allbinary.logic.communication.smtp.Email_Package;

package body org.allbinary.logic.communication.smtp.EmailsNotUsed_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicErrorNodeUtil_Package renames Standard.org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out EmailsNotUsed'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out EmailsNotUsed'Class) is
   begin
      Initialize_Fields (This);
        This.emailInfoVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return EmailsNotUsed_Access is
      This : constant EmailsNotUsed_Access := new EmailsNotUsed;
   begin
      EmailsNotUsed_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out EmailsNotUsed; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      size : Integer;
      email : Email_Access;
      emailNode : Node_Access;
      index : Integer;
      error : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                This.logUtil.putF (This.commonStrings.START, EmailsNotUsed_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
            end if;
            node := document.createElement (EmailData_Package.NAME);
            size := This.emailInfoVector.size;
            for index in 0 .. (size) - 1 loop
                email := Email_Access (This.emailInfoVector.get (index));
                emailNode := email.toXmlNode (document);
                if (emailNode) /= (null) then
                    node.appendChild (emailNode);
                end if;
            end loop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENT) then
                This.logUtil.putF (This.commonStrings.END_Id, EmailsNotUsed_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"));
            end if;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, EmailsNotUsed_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode()"), e);
            end if;
            error := To_Unbounded_String ("Error Processing Order.  Please contact us if error persists.<p/>");
            return BasicErrorNodeUtil_Package.get (document, error);
                end;
        end;
   end toXmlNode;

   procedure toXmlNode (This : in out EmailsNotUsed; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EmailsNotUsed'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.EmailsNotUsed_Package;


