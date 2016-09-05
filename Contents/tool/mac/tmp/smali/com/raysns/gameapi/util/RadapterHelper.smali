.class public Lcom/raysns/gameapi/util/RadapterHelper;
.super Ljava/lang/Object;
.source "RadapterHelper.java"


# static fields
.field private static _instance:Lcom/raysns/gameapi/util/RadapterHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/raysns/gameapi/util/RadapterHelper;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/util/RadapterHelper;->_instance:Lcom/raysns/gameapi/util/RadapterHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/raysns/gameapi/util/RadapterHelper;

    invoke-direct {v0}, Lcom/raysns/gameapi/util/RadapterHelper;-><init>()V

    sput-object v0, Lcom/raysns/gameapi/util/RadapterHelper;->_instance:Lcom/raysns/gameapi/util/RadapterHelper;

    :cond_0
    sget-object v0, Lcom/raysns/gameapi/util/RadapterHelper;->_instance:Lcom/raysns/gameapi/util/RadapterHelper;

    return-object v0
.end method


# virtual methods
.method public md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1    # Ljava/lang/String;

    const/16 v12, 0x10

    new-array v3, v12, [C

    fill-array-data v3, :array_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    array-length v5, v8

    mul-int/lit8 v12, v5, 0x2

    new-array v11, v12, [C

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v7, v6

    :goto_0
    if-lt v4, v5, :cond_0

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    :goto_1
    return-object v10

    :cond_0
    aget-byte v1, v8, v4

    add-int/lit8 v6, v7, 0x1

    ushr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v3, v12

    aput-char v12, v11, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v12, v1, 0xf

    aget-char v12, v3, v12

    aput-char v12, v11, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v10, 0x0

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "~~~~~~~~~~~~~~"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
