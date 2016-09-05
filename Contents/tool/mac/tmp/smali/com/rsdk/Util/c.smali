.class public final Lcom/rsdk/Util/c;
.super Ljava/lang/Object;
.source "c.java"


# static fields
.field private static f:Landroid/app/ProgressDialog;


# instance fields
.field private a:Lcom/rsdk/Util/SdkHttpListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rsdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/Util/c;->d:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Landroid/app/ProgressDialog;

    sput-object p0, Lcom/rsdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/io/InputStream;

    invoke-static {p0}, Lcom/rsdk/Util/c;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/rsdk/Util/f;

    invoke-direct {v0}, Lcom/rsdk/Util/f;-><init>()V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/rsdk/Util/c;)Z
    .locals 1
    .param p0    # Lcom/rsdk/Util/c;

    iget-boolean v0, p0, Lcom/rsdk/Util/c;->c:Z

    return v0
.end method

.method static synthetic access$0(Lcom/rsdk/Util/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/Util/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static b()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/rsdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Lcom/rsdk/Util/c;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/rsdk/Util/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rsdk/Util/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rsdk/Util/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static c(Lcom/rsdk/Util/c;)I
    .locals 1
    .param p0    # Lcom/rsdk/Util/c;

    iget v0, p0, Lcom/rsdk/Util/c;->e:I

    return v0
.end method

.method public static d(Lcom/rsdk/Util/c;)Lcom/rsdk/Util/SdkHttpListener;
    .locals 1
    .param p0    # Lcom/rsdk/Util/c;

    iget-object v0, p0, Lcom/rsdk/Util/c;->a:Lcom/rsdk/Util/SdkHttpListener;

    return-object v0
.end method

.method static disposeprogressdialog(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Landroid/app/ProgressDialog;

    sput-object p0, Lcom/rsdk/Util/c;->f:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/rsdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/rsdk/Util/SdkHttpListener;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rsdk/Util/SdkHttpListener;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rsdk/Util/c;->a:Lcom/rsdk/Util/SdkHttpListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rsdk/Util/c;->c:Z

    iput-object p2, p0, Lcom/rsdk/Util/c;->b:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/rsdk/Util/c;->e:I

    new-instance v0, Lcom/rsdk/Util/c$1;

    invoke-direct {v0, p0}, Lcom/rsdk/Util/c$1;-><init>(Lcom/rsdk/Util/c;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/rsdk/Util/e;

    iget-object v1, p0, Lcom/rsdk/Util/c;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/rsdk/Util/e;-><init>(Lcom/rsdk/Util/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/rsdk/Util/e;->start()V

    return-void
.end method

.method public final requestWithOutDialog(Lcom/rsdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/rsdk/Util/SdkHttpListener;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rsdk/Util/SdkHttpListener;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rsdk/Util/c;->a:Lcom/rsdk/Util/SdkHttpListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rsdk/Util/c;->c:Z

    iput-object p2, p0, Lcom/rsdk/Util/c;->b:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/rsdk/Util/c;->e:I

    new-instance v0, Lcom/rsdk/Util/e;

    iget-object v1, p0, Lcom/rsdk/Util/c;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/rsdk/Util/e;-><init>(Lcom/rsdk/Util/c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/rsdk/Util/e;->start()V

    return-void
.end method
