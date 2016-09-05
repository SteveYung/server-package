.class public Lcom/rsdk/framework/PluginWrapper;
.super Ljava/lang/Object;
.source "PluginWrapper.java"


# static fields
.field public static final RSDK_VERSION:Ljava/lang/String; = "2.0.3"

.field private static final TAG:Ljava/lang/String; = "PluginWrapper"

.field private static mActivityCallback:Ljava/util/Vector;

.field static sContext:Landroid/app/Activity;

.field protected static sGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field protected static sGLThreadHandler:Landroid/os/Handler;

.field protected static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    return-object v0
.end method

.method protected static getPluginType(Ljava/lang/Object;)I
    .locals 4
    .param p0    # Ljava/lang/Object;

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "PluginType"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSuportPluginId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "pluginid"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "pluginid"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSuportPluginname()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "pluginname"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getPluginInfo()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "pluginname"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;

    sput-object p0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/rsdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rsdk/framework/Wrapper;->analysisDeveloperInfo(Landroid/app/Activity;)V

    return-void
.end method

.method protected static initFromNativeActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0    # Landroid/app/Activity;

    sput-object p0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    return-void
.end method

.method protected static initPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p0    # Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "PluginWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "class name : ----"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/rsdk/framework/PluginWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    const-string v6, "PluginWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Class "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v6, "PluginWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Plugin "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wasn\'t initialized."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0, p1, p2}, Lcom/rsdk/framework/IActivityCallback;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onBackPressed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0    # Landroid/content/res/Configuration;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0}, Lcom/rsdk/framework/IActivityCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0}, Lcom/rsdk/framework/IActivityCallback;->onCreate(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Intent;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0}, Lcom/rsdk/framework/IActivityCallback;->onNewIntent(Landroid/content/Intent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onPause()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onRestart()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onRestart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onResume()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0}, Lcom/rsdk/framework/IActivityCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onStart()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onStop()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1}, Lcom/rsdk/framework/IActivityCallback;->onStop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 2
    .param p0    # Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rsdk/framework/IActivityCallback;

    invoke-interface {v1, p0}, Lcom/rsdk/framework/IActivityCallback;->onWindowFocusChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sGLThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string v0, "PluginWrapper"

    const-string v1, "call back invoked on main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->sContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setActivityCallback(Lcom/rsdk/framework/IActivityCallback;)V
    .locals 1
    .param p0    # Lcom/rsdk/framework/IActivityCallback;

    sget-object v0, Lcom/rsdk/framework/PluginWrapper;->mActivityCallback:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0
    .param p0    # Landroid/opengl/GLSurfaceView;

    sput-object p0, Lcom/rsdk/framework/PluginWrapper;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method
