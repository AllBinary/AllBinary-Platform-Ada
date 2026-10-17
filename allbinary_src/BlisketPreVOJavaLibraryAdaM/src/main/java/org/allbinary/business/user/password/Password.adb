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


package body org.allbinary.business.user.password.Password_Package is

   procedure Initialize_Fields (This : in out Password'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Password'Class; password : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.password := password;
   end Initialize;

   function Create (password : Unbounded_String) return Password_Access is
      This : constant Password_Access := new Password;
   begin
      Password_Package.Initialize (This.all, password);
      return This;
   end Create;

   procedure set (This : in out Password; value : Unbounded_String) is
   begin
        This.password := value;
   end set;

   function get (This : in out Password) return Unbounded_String is
   begin
        return This.password;
   end get;

   function isValid (This : in out Password) return Boolean is
      commonStrings : CommonStrings_Access;
      valid : Boolean;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            valid := True;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATION) then
                This.logUtil.putF (To_Unbounded_String ("Password: ") & This.password, This'Unchecked_Access, commonStrings.IS_VALID);
            end if;
            if not (StringValidationUtil_Package.getInstance.isValidRequired (This.password, 6, UserData_Package.MAXLEN)) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATION) then
                    This.logUtil.putF (To_Unbounded_String ("Password is invalid"), This'Unchecked_Access, commonStrings.IS_VALID);
                end if;
                valid := False;
            end if;
            return valid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VALIDATIONERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate form"), To_Unbounded_String ("Password"), commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function getValidationInfo (This : in out Password) return Unbounded_String is
      stringUtil : StringUtil_Access;
   begin
        if not (StringValidationUtil_Package.getInstance.isValidRequired (This.password, 6, UserData_Package.MAXLEN)) then
            return To_Unbounded_String ("Please enter a Password with more than 6 characters.<br />");
        end if;
        stringUtil := StringUtil_Package.getInstance;
        return stringUtil.EMPTY_STRING;
   end getValidationInfo;

   function toVector (This : in out Password; secret : Unbounded_String) return BasicArrayList_Access is
      random : Integer;
      vector : BasicArrayList_Access;
   begin
        This.password := StringUtil_Package.getInstance.getNonNull (This.password);
        random := Random_Package.Create.nextInt (SuperCrypt_Package.KEYMAX);
        vector := BasicArrayListD_Package.Create;
        vector.add (random.toString);
        vector.add (secret);
        vector.add (SuperCrypt_Package.Create (random).encrypt (This.password));
        return vector;
   end toVector;

   function toHashMap (This : in out Password; secret : Unbounded_String) return HashMap_Access is
      values : HashMap_Access;
      random : Integer;
   begin
        This.password := StringUtil_Package.getInstance.getNonNull (This.password);
        values := StdUtil_Package.getInstance.createHashMap;
        random := Random_Package.Create.nextInt (SuperCrypt_Package.KEYMAX);
        values.put (EntryData_Package.getInstance.ENCRYPTION, random.toString);
        values.put (UserData_Package.SECRET, secret);
        values.put (UserData_Package.PASSWORD, SuperCrypt_Package.Create (random).encrypt (This.password));
        return values;
   end toHashMap;

   procedure toVector (This : in out Password; secret : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := Password'Class (This).toVector (secret);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

   procedure toHashMap (This : in out Password; secret : Unbounded_String) is
      Java_Result : constant HashMap_Access := Password'Class (This).toHashMap (secret);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

end org.allbinary.business.user.password.Password_Package;


