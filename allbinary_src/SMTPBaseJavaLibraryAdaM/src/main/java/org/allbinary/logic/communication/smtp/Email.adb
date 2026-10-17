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


package body org.allbinary.logic.communication.smtp.Email_Package is

   procedure Initialize_Fields (This : in out Email'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.msg := null;
      This.properties := null;
      This.bs := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Email'Class; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.isDebug := False;
        This.init (from, to, subject, server, textBody, htmlAttachment, contentBase);
   end Initialize;

   function Create (from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return Email_Access is
      This : constant Email_Access := new Email;
   begin
      Email_Package.Initialize (This.all, from, to, subject, server, textBody, htmlAttachment, contentBase);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Email'Class; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String; isDebug : Boolean) is
   begin
      Initialize_Fields (This);
        This.isDebug := isDebug;
        This.init (from, to, subject, server, textBody, htmlAttachment, contentBase);
   end Initialize;

   function Create (from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String; isDebug : Boolean) return Email_Access is
      This : constant Email_Access := new Email;
   begin
      Email_Package.Initialize (This.all, from, to, subject, server, textBody, htmlAttachment, contentBase, isDebug);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out Email; from : Unbounded_String; to : Unbounded_String; subject : Unbounded_String; server : Unbounded_String; textBody : Unbounded_String; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) is
      stringValidationUtil : StringValidationUtil_Access;
      mimeBodyParts : MimeBodyPart_Access_Array_Access;
      internetHeaders : InternetHeaders_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            mimeBodyParts := new MimeBodyPart_Access_Array'(0 .. ((if not (stringValidationUtil.isEmpty (htmlAttachment)) then 2 else 1)) - 1 => null);
            mimeBodyParts (0) := MimeBodyPart_Package.Create;
            mimeBodyParts (0).setText (textBody);
            if not (stringValidationUtil.isEmpty (htmlAttachment)) then
                internetHeaders := InternetHeaders_Package.Create;
                internetHeaders.addHeader (To_Unbounded_String ("Content-Type"), To_Unbounded_String ("text/html"));
                if not (stringValidationUtil.isEmpty (contentBase)) then
                    internetHeaders.addHeader (To_Unbounded_String ("Content-Base"), contentBase);
                end if;
                mimeBodyParts (1) := MimeBodyPart_Package.Create (internetHeaders, htmlAttachment.getBytes);
            end if;
            This.init (server, Authenticator_Access (null), new InternetAddress_Access_Array'(0 => InternetAddress_Package.Create (from)), new InternetAddress_Access_Array'(0 => InternetAddress_Package.Create (to)), InternetAddress_Access_Array_Access (null), InternetAddress_Access_Array_Access (null), subject, mimeBodyParts);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("emailConstructor"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end init;

   --  throws MessagingException
   procedure init (This : in out Email; server : Unbounded_String; authenticator : Authenticator_Access; addresses_from : InternetAddress_Access_Array_Access; addresses_to : InternetAddress_Access_Array_Access; addresses_cc : InternetAddress_Access_Array_Access; addresses_bcc : InternetAddress_Access_Array_Access; subject : Unbounded_String; mimeBodyParts : MimeBodyPart_Access_Array_Access) is
      hostName : Unbounded_String;
      session : Session_Access;
      printStream : PrintStream_Access;
      mimeMultipart : MimeMultipart_Access;
      i : Integer;
   begin
        This.properties := Properties_Package.Create;
        This.properties.put (Email_Package.SMTP_HOST, server);
        begin
            hostName := StringUtil_Package.getInstance.EMPTY_STRING;
            if StringValidationUtil_Package.getInstance.isEmpty (hostName) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                    This.logUtil.putF (To_Unbounded_String ("Unable to get HostName so using fake"), This'Unchecked_Access, To_Unbounded_String ("init()"));
                end if;
                This.properties.put (Email_Package.SMTP_LOCAL_HOST, To_Unbounded_String ("FakeHostName"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Continuing on Exception: Unable to get HostName"), This'Unchecked_Access, To_Unbounded_String ("init()"), e);
            end if;
            This.properties.put (Email_Package.SMTP_LOCAL_HOST, To_Unbounded_String ("FakeHostName"));
                end;
        end;
        if This.isDebug then
            This.properties.put (Email_Package.DEBUG, To_Unbounded_String ("true"));
        end if;
        session := Session_Package.getInstance (This.properties, authenticator);
        if This.isDebug then
            session.setDebug (True);
            This.bs := ByteArrayOutputStream_Package.Create;
            printStream := PrintStream_Package.Create (This.bs);
            session.setDebugOut (printStream);
        end if;
        This.msg := MimeMessage_Package.Create (session);
        This.msg.addFrom (addresses_from);
        This.msg.setRecipients (Message_Package.RecipientType.TO, addresses_to);
        This.msg.setRecipients (Message_Package.RecipientType.CC, addresses_cc);
        This.msg.setRecipients (Message_Package.RecipientType.BCC, addresses_bcc);
        This.msg.setSubject (subject);
        mimeMultipart := MimeMultipart_Package.Create;
        for i in 0 .. (mimeBodyParts'Length) - 1 loop
            mimeMultipart.addBodyPart (mimeBodyParts (i));
        end loop;
        This.msg.setContent (mimeMultipart);
   end init;

   function getMimeMessage (This : in out Email) return MimeMessage_Access is
   begin
        return This.msg;
   end getMimeMessage;

   function getDebugInfo (This : in out Email) return Unbounded_String is
   begin
        if This.isDebug then
            return To_Unbounded_String ("More Logging Before This To Standard Out: ") & Java_Image (Java_New_String (This.bs.toString));
        else
            return To_Unbounded_String ("Debugging Is Off");
        end if;
   end getDebugInfo;

   --  throws Exception
   function log (This : in out Email) return Unbounded_String is
   begin
        return To_Unbounded_String ("" & ASCII.LF & "HashMap: ") & This.toHashMap.toString;
   end log;

   --  throws Exception
   function toHashMap (This : in out Email) return HashMap_Access is
      hashMap : HashMap_Access;
      addresses : Address_Access_Array_Access;
      index : Integer;
      mimeMultipart : MimeMultipart_Access;
      content : Unbounded_String;
   begin
        begin
            hashMap := StdUtil_Package.getInstance.createHashMap;
            hashMap.put (EmailData_Package.SERVER, Unbounded_String (This.properties.get (Email_Package.SMTP_HOST)));
            addresses := This.msg.getFrom;
            if (addresses) /= (null) then
                for index in 0 .. (addresses'Length) - 1 loop
                    hashMap.put (EmailData_Package.FROM, addresses (index).toString);
                end loop;
            end if;
            addresses := This.msg.getRecipients (Message_Package.RecipientType.TO);
            if (addresses) /= (null) then
                for index in 0 .. (addresses'Length) - 1 loop
                    hashMap.put (EmailData_Package.TO, addresses (index).toString);
                end loop;
            end if;
            addresses := This.msg.getRecipients (Message_Package.RecipientType.CC);
            if (addresses) /= (null) then
                for index in 0 .. (addresses'Length) - 1 loop
                    hashMap.put (EmailData_Package.CC, addresses (index).toString);
                end loop;
            end if;
            addresses := This.msg.getRecipients (Message_Package.RecipientType.BCC);
            if (addresses) /= (null) then
                for index in 0 .. (addresses'Length) - 1 loop
                    hashMap.put (EmailData_Package.BCC, addresses (index).toString);
                end loop;
            end if;
            hashMap.put (EmailData_Package.SUBJECT, This.msg.getSubject);
            mimeMultipart := MimeMultipart_Access (This.msg.getContent);
            if (mimeMultipart) /= (null) then
                for index in 0 .. (mimeMultipart.getCount) - 1 loop
                    content := Unbounded_String (mimeMultipart.getBodyPart (index).getContent);
                    hashMap.put (EmailData_Package.CONTENT, content);
                end loop;
            end if;
            return hashMap;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toHashMap()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out Email; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, EmailData_Package.NAME, This.toHashMap);
        return node;
   end toXmlNode;

   --  throws Exception
   function toXmlDoc (This : in out Email) return Document_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end toXmlDoc;

   procedure toXmlNode (This : in out Email; document : Document_Access) is
      Java_Result : constant Node_Access := Email'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   DEBUG := To_Unbounded_String ("mail.debug");
   SMTP_HOST := To_Unbounded_String ("mail.smtp.host");
   SMTP_PORT := To_Unbounded_String ("mail.smtp.port");
   SMTP_USER := To_Unbounded_String ("mail.smtp.user");
   SMTP_RETURN_ADDRESS := To_Unbounded_String ("mail.from");
   SMTP_LOCAL_HOST := To_Unbounded_String ("mail.smtp.localhost");

end org.allbinary.logic.communication.smtp.Email_Package;


