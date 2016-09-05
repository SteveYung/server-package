.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;
.super Landroid/app/Dialog;
.source "Cocos2dxEditBoxDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mButton:Landroid/widget/Button;

.field private mInputEditText:Landroid/widget/EditText;

.field private final mInputFlag:I

.field private mInputFlagConstraints:I

.field private final mInputMode:I

.field private mInputModeContraints:I

.field private mIsMultiline:Z

.field private final mMaxLength:I

.field private final mMessage:Ljava/lang/String;

.field private final mReturnType:I

.field private mTextViewTitle:Landroid/widget/TextView;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeAny:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeEmailAddr:I

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeNumeric:I

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModePhoneNumber:I

    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeUrl:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeDecimal:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputModeSingleLine:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagPassword:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagSensitive:I

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsWord:I

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsSentence:I

    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kEditBoxInputFlagInitialCapsAllCharacters:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDefault:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeDone:I

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSend:I

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeSearch:I

    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->kKeyboardReturnTypeGo:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    iput p7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->openKeyboard()V

    return-void
.end method

.method private closeKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private convertDipsToPixels(F)I
    .locals 2
    .param p1    # F

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private openKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, -0x80000000

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x43960000

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x43870000

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/Button;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mButton:Landroid/widget/Button;

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mButton:Landroid/widget/Button;

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mButton:Landroid/widget/Button;

    new-instance v8, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;

    invoke-direct {v8, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getImeOptions()I

    move-result v5

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getImeOptions()I

    move-result v5

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputMode:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    iget-boolean v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mIsMultiline:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    const/high16 v8, 0x20000

    or-int/2addr v7, v8

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    :cond_0
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    iget v9, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlag:I

    packed-switch v7, :pswitch_data_1

    :goto_1
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    iget v8, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    iget v9, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    or-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mReturnType:I

    packed-switch v7, :pswitch_data_2

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_2
    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    if-lez v7, :cond_1

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    iget v11, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mMaxLength:I

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    new-instance v8, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;

    invoke-direct {v8, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :pswitch_0
    const v7, 0x20001

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_1
    const/16 v7, 0x21

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_2
    const/16 v7, 0x1002

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_3
    const/4 v7, 0x3

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_4
    const/16 v7, 0x11

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_5
    const/16 v7, 0x3002

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_6
    const/4 v7, 0x1

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputModeContraints:I

    goto :goto_0

    :pswitch_7
    const/16 v7, 0x81

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :pswitch_8
    const/high16 v7, 0x80000

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :pswitch_9
    const/16 v7, 0x2000

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :pswitch_a
    const/16 v7, 0x4000

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :pswitch_b
    const/16 v7, 0x1000

    iput v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputFlagConstraints:I

    goto :goto_1

    :pswitch_c
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    :pswitch_d
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    :pswitch_e
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    :pswitch_f
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    :pswitch_10
    iget-object v7, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->dismiss()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
