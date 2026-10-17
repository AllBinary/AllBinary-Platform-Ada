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


package body org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package is

   procedure Initialize_Fields (This : in out RegistrationConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.registrationCode := To_Unbounded_String ("No Registration Code");
      This.NAME := To_Unbounded_String ("registrationid");
      This.FILE := To_Unbounded_String ("Registration.dat");
   end Initialize_Fields;


   procedure Initialize (This : in out RegistrationConfiguration'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            if FileFactory_Package.getInstance.isFile (This.FILE) then
                This.read;
            else
                This.write;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return RegistrationConfiguration_Access is
      This : constant RegistrationConfiguration_Access := new RegistrationConfiguration;
   begin
      RegistrationConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return RegistrationConfiguration_Access is
   begin
        return RegistrationConfiguration_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure read (This : in out RegistrationConfiguration) is
      fileInputStreamFactory : FileStreamFactory_Access;
      fileInputStream : InputStream_Access;
      dataInputStream : DataInputStream_Access;
   begin
        fileInputStreamFactory := FileStreamFactory_Package.getInstance;
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
        dataInputStream := DataInputStream_Package.Create (fileInputStream);
        This.setRegistrationCode (dataInputStream.readUTF);
        PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Read Configuration: ")).append (This.toString).toString, This'Unchecked_Access, To_Unbounded_String ("read"));
   end read;

   --  throws Exception
   procedure write (This : in out RegistrationConfiguration) is
      dataOutputStream : AbDataOutputStream_Access;
      fileInputStreamFactory : FileStreamFactory_Access;
      fileOutputStream : OutputStream_Access;
   begin
        dataOutputStream := null;
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Write Configuration: ")).append (This.toString).toString, This'Unchecked_Access, To_Unbounded_String ("write"));
            fileInputStreamFactory := FileStreamFactory_Package.getInstance;
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance (StringUtil_Package.getInstance.EMPTY_STRING, This.FILE);
            dataOutputStream := AbDataOutputStream_Package.Create (fileOutputStream);
            dataOutputStream.writeUTF (This.getRegistrationCode);
            dataOutputStream.flush;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (dataOutputStream);
        end;
   end write;

   function toString (This : in out RegistrationConfiguration) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("Registration Code: ")).append (This.getRegistrationCode).toString;
   end toString;

   procedure setRegistrationCode (This : in out RegistrationConfiguration; registrationCode : Unbounded_String) is
   begin
        This.registrationCode := registrationCode;
   end setRegistrationCode;

   function getRegistrationCode (This : in out RegistrationConfiguration) return Unbounded_String is
   begin
        return This.registrationCode;
   end getRegistrationCode;

begin
   null;
   SINGLETON := RegistrationConfiguration_Package.Create;

end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;


