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


package body org.allbinary.logic.communication.smtp.AbEmail_Package is

   procedure Initialize_Fields (This : in out AbEmail'Class) is
   begin
      null;
      This.email := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AbEmail'Class; server : Unbounded_String; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
            This.email := Email_Package.Create (from, to, subject, server, textBody, htmlAttachment, contentBase, True);
        else
            This.email := Email_Package.Create (from, to, subject, server, textBody, htmlAttachment, contentBase);
        end if;
   end Initialize;

   function Create (server : Unbounded_String; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return AbEmail_Access is
      This : constant AbEmail_Access := new AbEmail;
   begin
      AbEmail_Package.Initialize (This.all, server, from, to, subject, textBody, htmlAttachment, contentBase);
      return This;
   end Create;

   function getMimeMessage (This : in out AbEmail) return MimeMessage_Access is
   begin
        return This.email.getMimeMessage;
   end getMimeMessage;

   function getDebugInfo (This : in out AbEmail) return Unbounded_String is
   begin
        return This.email.getDebugInfo;
   end getDebugInfo;

   --  throws Exception
   function log (This : in out AbEmail) return Unbounded_String is
   begin
        return This.email.log;
   end log;

   --  throws Exception
   function toHashMap (This : in out AbEmail) return HashMap_Access is
   begin
        return This.email.toHashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out AbEmail; document : Document_Access) return Node_Access is
   begin
        return This.email.toXmlNode (document);
   end toXmlNode;

   function getEmail (This : in out AbEmail) return Email_Access is
   begin
        return Email_Access (This.email);
   end getEmail;

   --  throws Exception
   function toXmlDoc (This : in out AbEmail) return Document_Access is
   begin
        return This.email.toXmlDoc;
   end toXmlDoc;

   procedure toXmlNode (This : in out AbEmail; document : Document_Access) is
      Java_Result : constant Node_Access := AbEmail'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.AbEmail_Package;


