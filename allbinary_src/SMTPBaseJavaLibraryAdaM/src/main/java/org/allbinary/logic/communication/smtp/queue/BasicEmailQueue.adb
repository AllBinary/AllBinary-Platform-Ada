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


package body org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package is

   procedure Initialize_Fields (This : in out BasicEmailQueue'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicEmailQueue'Class) is
   begin
      BasicQueue_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicEmailQueue_Access is
      This : constant BasicEmailQueue_Access := new BasicEmailQueue;
   begin
      BasicEmailQueue_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return BasicEmailQueue_Access is
   begin
        if (BasicEmailQueue_Package.basicEmailQueue) = (null) then
            BasicEmailQueue_Package.basicEmailQueue := BasicEmailQueue_Package.Create;
        end if;
        return BasicEmailQueue_Package.basicEmailQueue;
   end getInstance;

   --  throws Exception
   function offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean is
      emailInterface : constant EmailInterface_Access := EmailInterface_Access (emailInterface_Param);
   begin
        BasicEmailQueue'Class (This).offer (Java_Object_Access (emailInterface));
        BasicEmailQueue'Class (This).post (emailInterface);
        return True;
   end offer;

   procedure remove (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) is
      emailInterface : constant EmailInterface_Access := EmailInterface_Access (emailInterface_Param);
   begin
        BasicEmailQueue'Class (This).remove (Java_Object_Access (emailInterface));
   end remove;

   function remove (This : in out BasicEmailQueue) return EmailInterface_Access is
   begin
        return null;
   end remove;

   --  throws Exception
   procedure post (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) is
      emailInterface : constant EmailInterface_Access := EmailInterface_Access (emailInterface_Param);
   begin
        if BasicEmailQueue'Class (This).send (emailInterface) then
            BasicEmailQueue'Class (This).remove (emailInterface);
            BasicEmailQueue'Class (This).processAllUnsent;
        end if;
   end post;

   --  throws Exception
   procedure processAllUnsent (This : in out BasicEmailQueue) is
      size : Integer;
      emailInterface : EmailInterface_Access;
      index : Integer;
   begin
        size := This.queueVector.size;
        for index in 0 .. (size) - 1 loop
            emailInterface := EmailInterface_Access (This.queueVector.get (index));
            if BasicEmailQueue'Class (This).send (emailInterface) then
                BasicEmailQueue'Class (This).remove (emailInterface);
                BasicEmailQueue'Class (This).processAllUnsent;
            end if;
        end loop;
   end processAllUnsent;

   function send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) return Boolean is
      emailInterface : constant EmailInterface_Access := EmailInterface_Access (emailInterface_Param);
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Sending: ") & Java_Image (emailInterface.log), BasicEmailQueue_Access'(This'Unchecked_Access), To_Unbounded_String ("send"));
            end if;
            Transport_Package.send (emailInterface.getMimeMessage);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.putF (To_Unbounded_String ("Email Send Debug: ") & Java_Image (emailInterface.getDebugInfo), BasicEmailQueue_Access'(This'Unchecked_Access), To_Unbounded_String ("send"));
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
                This.logUtil.put (To_Unbounded_String ("Failed Email Send Debug: ") & Java_Image (emailInterface.getDebugInfo), BasicEmailQueue_Access'(This'Unchecked_Access), To_Unbounded_String ("send"), e);
            end if;
            return False;
                end;
        end;
   end send;

   procedure offer (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) is
      Java_Result : constant Boolean := BasicEmailQueue'Class (This).offer (emailInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end offer;

   procedure send (This : in out BasicEmailQueue; emailInterface_Param : access EmailInterface_Package.EmailInterface'Class) is
      Java_Result : constant Boolean := BasicEmailQueue'Class (This).send (emailInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end send;

begin
   null;
   instance := BasicEmailQueue_Package.Create;
   basicEmailQueue := null;

end org.allbinary.logic.communication.smtp.queue.BasicEmailQueue_Package;


