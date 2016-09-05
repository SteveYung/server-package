.class public Lorg/cocos2dx/lib/Cocos2dxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "Cocos2dxPrefsFile"

.field private static sAccelerometerEnabled:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

.field private static sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

.field private static sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field private static sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

.field private static sContext:Landroid/content/Context;

.field private static sFileDirectory:Ljava/lang/String;

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0([B)V
    .locals 0

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method private static containsEmoji(Ljava/lang/String;)Z
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isEmojiCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static disableAccelerometer()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    return-void
.end method

.method public static end()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    return-void
.end method

.method private static filterEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->containsEmoji(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filterEmoji===="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "changdu,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    if-nez v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->isEmojiCharacter(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "fei_emoji======"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "emoji====="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ne v4, v3, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 5

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # D

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    double-to-float v1, p1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    return-wide v1
.end method

.method public static getEffectsVolume()F
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # F

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # I

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static isEmojiCharacter(C)Z
    .locals 1
    .param p0    # C

    if-eqz p0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_2

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onPause()V
    .locals 1

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    :cond_0
    return-void
.end method

.method public static pauseAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseAllEffects()V

    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0    # I

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeAllEffects()V

    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1
    .param p0    # I

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1
    .param p0    # F

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setInterval(F)V

    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0    # F

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # D

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-float v2, p1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->filterEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxHelper$1;

    invoke-direct {v3, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$1;-><init>([B)V

    invoke-interface {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0    # F

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    return-void
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # F

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # I

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopAllEffects()V

    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0    # I

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    return-void
.end method
