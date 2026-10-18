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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.money.payment.PaymentData_Package; use org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.SuperCrypt_Package; use org.allbinary.logic.control.crypt.SuperCrypt_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;

package body org.allbinary.business.user.commerce.money.payment.gateway.PaymentGateway_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package PaymentData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.PaymentData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SuperCrypt_Package renames Standard.org.allbinary.logic.control.crypt.SuperCrypt_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out PaymentGateway'Class) is
   begin
      null;
      This.storeName := Null_Unbounded_String;
      This.name := Null_Unbounded_String;
      This.enable := Null_Unbounded_String;
      This.paymentMethod := Null_Unbounded_String;
      This.mode := Null_Unbounded_String;
      This.testProtocol := Null_Unbounded_String;
      This.testServer := Null_Unbounded_String;
      This.testPort := Null_Unbounded_String;
      This.testPath := Null_Unbounded_String;
      This.serverProtocol := Null_Unbounded_String;
      This.server := Null_Unbounded_String;
      This.serverPort := Null_Unbounded_String;
      This.serverPath := Null_Unbounded_String;
      This.timeout := Null_Unbounded_String;
      This.userName := Null_Unbounded_String;
      This.password := Null_Unbounded_String;
      This.proxyProtocol := Null_Unbounded_String;
      This.proxyServer := Null_Unbounded_String;
      This.proxyPort := Null_Unbounded_String;
      This.proxyPath := Null_Unbounded_String;
      This.proxyUserName := Null_Unbounded_String;
      This.proxyPassword := Null_Unbounded_String;
      This.proxyTimeout := Null_Unbounded_String;
      This.special1 := Null_Unbounded_String;
      This.special2 := Null_Unbounded_String;
      This.special3 := Null_Unbounded_String;
      This.special4 := Null_Unbounded_String;
      This.special5 := Null_Unbounded_String;
      This.special6 := Null_Unbounded_String;
      This.special7 := Null_Unbounded_String;
      This.special8 := Null_Unbounded_String;
      This.special9 := Null_Unbounded_String;
      This.lastModified := Null_Unbounded_String;
      This.timeEntered := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGateway'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        PaymentGateway'Class (This).getFormData (hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return PaymentGateway_Access is
      This : constant PaymentGateway_Access := new PaymentGateway;
   begin
      PaymentGateway_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   procedure getFormData (This : in out PaymentGateway; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      stringUtil : StringUtil_Access;
      empty : Unbounded_String;
   begin
        stringUtil := StringUtil_Package.getInstance;
        empty := stringUtil.EMPTY_STRING;
        This.storeName := Java_Unbox (hashMap.get (Java_Box (StoreFrontData_Package.getInstance.NAME.toString)));
        This.name := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.NAME.toString)));
        This.enable := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (EntryData_Package.getInstance.ENABLE.toString))));
        This.paymentMethod := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (PaymentData_Package.METHOD.toString))));
        This.mode := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.MODE.toString))));
        This.testProtocol := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.TESTPROTOCOL.toString))));
        This.testServer := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.TESTSERVER.toString))));
        This.testPort := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.TESTPORT.toString))));
        This.testPath := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.TESTPATH.toString)));
        if (This.testPath) = (Null_Unbounded_String) then
            This.testPath := empty;
        end if;
        This.serverProtocol := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SERVERPROTOCOL.toString)));
        if (This.serverProtocol) = (Null_Unbounded_String) then
            This.serverProtocol := empty;
        end if;
        This.server := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SERVER.toString)));
        if (This.server) = (Null_Unbounded_String) then
            This.server := empty;
        end if;
        This.serverPort := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SERVERPORT.toString)));
        if (This.serverPort) = (Null_Unbounded_String) then
            This.serverPort := empty;
        end if;
        This.serverPath := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SERVERPATH.toString)));
        if (This.serverPath) = (Null_Unbounded_String) then
            This.serverPath := empty;
        end if;
        This.userName := Java_Unbox (hashMap.get (Java_Box (UserData_Package.USERNAME.toString)));
        if (This.userName) = (Null_Unbounded_String) then
            This.userName := empty;
        end if;
        This.password := Java_Unbox (hashMap.get (Java_Box (UserData_Package.PASSWORD.toString)));
        if (This.password) = (Null_Unbounded_String) then
            This.password := empty;
        end if;
        This.timeout := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.TIMEOUT.toString)));
        if (This.timeout) = (Null_Unbounded_String) then
            This.timeout := empty;
        end if;
        This.proxyProtocol := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYPROTOCOL.toString)));
        if (This.proxyProtocol) = (Null_Unbounded_String) then
            This.proxyProtocol := empty;
        end if;
        This.proxyServer := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYSERVER.toString)));
        if (This.proxyServer) = (Null_Unbounded_String) then
            This.proxyServer := empty;
        end if;
        This.proxyPort := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYPORT.toString)));
        if (This.proxyPort) = (Null_Unbounded_String) then
            This.proxyPort := empty;
        end if;
        This.proxyPath := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYPATH.toString)));
        if (This.proxyPath) = (Null_Unbounded_String) then
            This.proxyPath := empty;
        end if;
        This.proxyUserName := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYUSERNAME.toString)));
        if (This.proxyUserName) = (Null_Unbounded_String) then
            This.proxyUserName := empty;
        end if;
        This.proxyPassword := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYPASSWORD.toString)));
        if (This.proxyPassword) = (Null_Unbounded_String) then
            This.proxyPassword := empty;
        end if;
        This.proxyTimeout := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.PROXYTIMEOUT.toString)));
        if (This.proxyTimeout) = (Null_Unbounded_String) then
            This.proxyTimeout := empty;
        end if;
        This.special1 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL1.toString)));
        if (This.special1) = (Null_Unbounded_String) then
            This.special1 := empty;
        end if;
        This.special2 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL2.toString)));
        if (This.special2) = (Null_Unbounded_String) then
            This.special2 := empty;
        end if;
        This.special3 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL3.toString)));
        if (This.special3) = (Null_Unbounded_String) then
            This.special3 := empty;
        end if;
        This.special4 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL4.toString)));
        if (This.special4) = (Null_Unbounded_String) then
            This.special4 := empty;
        end if;
        This.special5 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL5.toString)));
        if (This.special5) = (Null_Unbounded_String) then
            This.special5 := empty;
        end if;
        This.special6 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL6.toString)));
        if (This.special6) = (Null_Unbounded_String) then
            This.special6 := empty;
        end if;
        This.special7 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL7.toString)));
        if (This.special7) = (Null_Unbounded_String) then
            This.special7 := empty;
        end if;
        This.special8 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL8.toString)));
        if (This.special8) = (Null_Unbounded_String) then
            This.special8 := empty;
        end if;
        This.special9 := Java_Unbox (hashMap.get (Java_Box (PaymentGatewayData_Package.SPECIAL9.toString)));
        if (This.special9) = (Null_Unbounded_String) then
            This.special9 := empty;
        end if;
        This.lastModified := Java_Unbox (hashMap.get (Java_Box (EntryData_Package.getInstance.LASTMODIFIED.toString)));
        if (This.lastModified) = (Null_Unbounded_String) then
            This.lastModified := empty;
        end if;
        This.timeEntered := Java_Unbox (hashMap.get (Java_Box (EntryData_Package.getInstance.TIMECREATED.toString)));
        if (This.timeEntered) = (Null_Unbounded_String) then
            This.timeEntered := empty;
        end if;
   end getFormData;

   function getStoreName (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.storeName;
   end getStoreName;

   function getName (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getEnable (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.enable;
   end getEnable;

   function getPaymentMethod (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.paymentMethod;
   end getPaymentMethod;

   function getMode (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.mode;
   end getMode;

   function getTestProtocol (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.testProtocol;
   end getTestProtocol;

   function getTestServer (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.testServer;
   end getTestServer;

   function getTestPort (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.testPort;
   end getTestPort;

   function getTestPath (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.testPath;
   end getTestPath;

   function getServerProtocol (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.serverProtocol;
   end getServerProtocol;

   function getServer (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.server;
   end getServer;

   function getServerPort (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.serverPort;
   end getServerPort;

   function getServerPath (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.serverPath;
   end getServerPath;

   function getUserName (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.userName;
   end getUserName;

   function getPassword (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.password;
   end getPassword;

   function getProxyProtocol (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyProtocol;
   end getProxyProtocol;

   function getProxyServer (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyServer;
   end getProxyServer;

   function getProxyPath (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyPath;
   end getProxyPath;

   function getProxyPort (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyPort;
   end getProxyPort;

   function getProxyUserName (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyUserName;
   end getProxyUserName;

   function getProxyPassword (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyPassword;
   end getProxyPassword;

   function getTimeout (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.timeout;
   end getTimeout;

   function getProxyTimeout (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.proxyTimeout;
   end getProxyTimeout;

   function getSpecial1 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special1;
   end getSpecial1;

   function getSpecial2 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special2;
   end getSpecial2;

   function getSpecial3 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special3;
   end getSpecial3;

   function getSpecial4 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special4;
   end getSpecial4;

   function getSpecial5 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special5;
   end getSpecial5;

   function getSpecial6 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special6;
   end getSpecial6;

   function getSpecial7 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special7;
   end getSpecial7;

   function getSpecial8 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special8;
   end getSpecial8;

   function getSpecial9 (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.special9;
   end getSpecial9;

   function getLastModified (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.lastModified;
   end getLastModified;

   function getTimeEntered (This : in out PaymentGateway) return Unbounded_String is
   begin
        return This.timeEntered;
   end getTimeEntered;

   procedure setEnable (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.enable := value;
   end setEnable;

   procedure setStoreName (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.storeName := value;
   end setStoreName;

   procedure setName (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setPaymentMethod (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.paymentMethod := value;
   end setPaymentMethod;

   procedure setMode (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.mode := value;
   end setMode;

   procedure setTestProtocol (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.testProtocol := value;
   end setTestProtocol;

   procedure setTestServer (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.testServer := value;
   end setTestServer;

   procedure setTestPort (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.testPort := value;
   end setTestPort;

   procedure setTestPath (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.testPath := value;
   end setTestPath;

   procedure setServerProtocol (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.serverProtocol := value;
   end setServerProtocol;

   procedure setServer (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.server := value;
   end setServer;

   procedure setServerPort (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.serverPort := value;
   end setServerPort;

   procedure setServerPath (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.serverPath := value;
   end setServerPath;

   procedure setTimeout (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.timeout := value;
   end setTimeout;

   procedure setUserName (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.userName := value;
   end setUserName;

   procedure setPassword (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.password := value;
   end setPassword;

   procedure setProxyProtocol (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyProtocol := value;
   end setProxyProtocol;

   procedure setProxyServer (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyServer := value;
   end setProxyServer;

   procedure setProxyPort (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyPort := value;
   end setProxyPort;

   procedure setProxyPath (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyPath := value;
   end setProxyPath;

   procedure setProxyUserName (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyUserName := value;
   end setProxyUserName;

   procedure setProxyPassword (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyPassword := value;
   end setProxyPassword;

   procedure setProxyTimeout (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.proxyTimeout := value;
   end setProxyTimeout;

   procedure setSpecial1 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special1 := value;
   end setSpecial1;

   procedure setSpecial2 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special2 := value;
   end setSpecial2;

   procedure setSpecial3 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special3 := value;
   end setSpecial3;

   procedure setSpecial4 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special4 := value;
   end setSpecial4;

   procedure setSpecial5 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special5 := value;
   end setSpecial5;

   procedure setSpecial6 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special6 := value;
   end setSpecial6;

   procedure setSpecial7 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special7 := value;
   end setSpecial7;

   procedure setSpecial8 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special8 := value;
   end setSpecial8;

   procedure setSpecial9 (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.special9 := value;
   end setSpecial9;

   procedure setLastModified (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.lastModified := value;
   end setLastModified;

   procedure setTimeEntered (This : in out PaymentGateway; value : Unbounded_String) is
   begin
        This.timeEntered := value;
   end setTimeEntered;

   --  throws Exception
   function toHashMap (This : in out PaymentGateway) return HashMap_Access is
   begin
        return PaymentGateway'Class (This).toHashMap (True);
   end toHashMap;

   --  throws Exception
   function toHashMap (This : in out PaymentGateway; isEncrypted : Boolean) return HashMap_Access is
      paymentGatewayHashMap : HashMap_Access;
      superCrypt : SuperCrypt_Access;
   begin
        paymentGatewayHashMap := StdUtil_Package.getInstance.createHashMap;
        paymentGatewayHashMap.put (EntryData_Package.getInstance.ENABLE, Java_Box (This.enable));
        paymentGatewayHashMap.put (Java_Box (StoreFrontData_Package.getInstance.NAME.toString), Java_Box (This.storeName));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.NAME.toString), Java_Box (PaymentGateway'Class (This).getName));
        paymentGatewayHashMap.put (Java_Box (PaymentData_Package.METHOD.toString), Java_Box (This.paymentMethod));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.MODE.toString), Java_Box (This.mode));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.TESTPROTOCOL.toString), Java_Box (This.testProtocol));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.TESTSERVER.toString), Java_Box (This.testServer));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.TESTPORT.toString), Java_Box (This.testPort));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.TESTPATH.toString), Java_Box (This.testPath));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SERVERPROTOCOL.toString), Java_Box (This.serverProtocol));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SERVER.toString), Java_Box (This.server));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SERVERPORT.toString), Java_Box (This.serverPort));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SERVERPATH.toString), Java_Box (This.serverPath));
        if isEncrypted then
            superCrypt := SuperCrypt_Package.Create (PaymentGatewayData_Package.CRYPTNUM);
            paymentGatewayHashMap.put (Java_Box (UserData_Package.USERNAME.toString), superCrypt.encrypt (This.userName));
            paymentGatewayHashMap.put (Java_Box (UserData_Package.PASSWORD.toString), superCrypt.encrypt (This.password));
        else
            paymentGatewayHashMap.put (Java_Box (UserData_Package.USERNAME.toString), Java_Box (This.userName));
            paymentGatewayHashMap.put (Java_Box (UserData_Package.PASSWORD.toString), Java_Box (This.password));
        end if;
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.TIMEOUT.toString), Java_Box (This.timeout));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYPROTOCOL.toString), Java_Box (This.proxyProtocol));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYSERVER.toString), Java_Box (This.proxyServer));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYPORT.toString), Java_Box (This.proxyPort));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYPATH.toString), Java_Box (This.proxyPath));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYUSERNAME.toString), Java_Box (This.proxyUserName));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYPASSWORD.toString), Java_Box (This.proxyPassword));
        paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.PROXYTIMEOUT.toString), Java_Box (This.proxyTimeout));
        if isEncrypted then
            superCrypt := SuperCrypt_Package.Create (PaymentGatewayData_Package.CRYPTNUM);
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL1.toString), superCrypt.encrypt (This.special1));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL2.toString), superCrypt.encrypt (This.special2));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL3.toString), superCrypt.encrypt (This.special3));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL4.toString), superCrypt.encrypt (This.special4));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL5.toString), superCrypt.encrypt (This.special5));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL6.toString), superCrypt.encrypt (This.special6));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL7.toString), superCrypt.encrypt (This.special7));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL8.toString), superCrypt.encrypt (This.special8));
        else
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL1.toString), Java_Box (This.special1));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL2.toString), Java_Box (This.special2));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL3.toString), Java_Box (This.special3));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL4.toString), Java_Box (This.special4));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL5.toString), Java_Box (This.special5));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL6.toString), Java_Box (This.special6));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL7.toString), Java_Box (This.special7));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL8.toString), Java_Box (This.special8));
            paymentGatewayHashMap.put (Java_Box (PaymentGatewayData_Package.SPECIAL9.toString), Java_Box (This.special9));
        end if;
        paymentGatewayHashMap.put (Java_Box (EntryData_Package.getInstance.LASTMODIFIED.toString), Java_Box (This.lastModified));
        return paymentGatewayHashMap;
   end toHashMap;

   function toVector (This : in out PaymentGateway) return BasicArrayList_Access is
   begin
        return PaymentGateway'Class (This).toVector (True);
   end toVector;

   function toVector (This : in out PaymentGateway; isEncrypted : Boolean) return BasicArrayList_Access is
      updateVector : BasicArrayList_Access;
      superCrypt : SuperCrypt_Access;
   begin
        updateVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        updateVector.add (This.enable);
        updateVector.add (This.storeName);
        updateVector.add (PaymentGateway'Class (This).getName);
        updateVector.add (This.paymentMethod);
        updateVector.add (This.mode);
        updateVector.add (This.testProtocol);
        updateVector.add (This.testServer);
        updateVector.add (This.testPort);
        updateVector.add (This.testPath);
        updateVector.add (This.serverProtocol);
        updateVector.add (This.server);
        updateVector.add (This.serverPort);
        updateVector.add (This.serverPath);
        if isEncrypted then
            superCrypt := SuperCrypt_Package.Create (PaymentGatewayData_Package.CRYPTNUM);
            updateVector.add (superCrypt.encrypt (This.userName));
            updateVector.add (superCrypt.encrypt (This.password));
        else
            updateVector.add (This.userName);
            updateVector.add (This.password);
        end if;
        updateVector.add (This.timeout);
        updateVector.add (This.proxyProtocol);
        updateVector.add (This.proxyServer);
        updateVector.add (This.proxyPort);
        updateVector.add (This.proxyPath);
        updateVector.add (This.proxyUserName);
        updateVector.add (This.proxyPassword);
        updateVector.add (This.proxyTimeout);
        if isEncrypted then
            superCrypt := SuperCrypt_Package.Create (PaymentGatewayData_Package.CRYPTNUM);
            updateVector.add (superCrypt.encrypt (This.special1));
            updateVector.add (superCrypt.encrypt (This.special2));
            updateVector.add (superCrypt.encrypt (This.special3));
            updateVector.add (superCrypt.encrypt (This.special4));
            updateVector.add (superCrypt.encrypt (This.special5));
            updateVector.add (superCrypt.encrypt (This.special6));
            updateVector.add (superCrypt.encrypt (This.special7));
            updateVector.add (superCrypt.encrypt (This.special8));
            updateVector.add (superCrypt.encrypt (This.special9));
        else
            updateVector.add (This.special1);
            updateVector.add (This.special2);
            updateVector.add (This.special3);
            updateVector.add (This.special4);
            updateVector.add (This.special5);
            updateVector.add (This.special6);
            updateVector.add (This.special7);
            updateVector.add (This.special8);
            updateVector.add (This.special9);
        end if;
        return updateVector;
   end toVector;

   --  throws Exception
   function getKey (This : in out PaymentGateway) return Java_Object_Access is
   begin
        return Java_Object_Access (PaymentGatewayPrimaryKey_Package.Create (PaymentGateway'Class (This).getStoreName, PaymentGateway'Class (This).getName));
   end getKey;

   procedure toHashMap (This : in out PaymentGateway; isEncrypted : Boolean) is
      Java_Result : constant HashMap_Access := PaymentGateway'Class (This).toHashMap (isEncrypted);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toVector (This : in out PaymentGateway; isEncrypted : Boolean) is
      Java_Result : constant BasicArrayList_Access := PaymentGateway'Class (This).toVector (isEncrypted);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toVector;

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGateway_Package;


