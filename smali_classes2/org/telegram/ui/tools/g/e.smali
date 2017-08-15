.class public Lorg/telegram/ui/tools/g/e;
.super Landroid/widget/FrameLayout;
.source "UpdateCell.java"


# instance fields
.field private a:Lorg/telegram/ui/Components/AvatarDrawable;

.field private b:Lorg/telegram/ui/Components/BackupImageView;

.field private c:Lorg/telegram/ui/Components/CheckBox;

.field private d:Lorg/telegram/tgnet/TLRPC$User;

.field private e:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private f:Landroid/widget/ImageView;

.field private g:Ljava/lang/String;

.field private h:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private i:I

.field private j:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private k:I

.field private l:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private m:Lorg/telegram/ui/tools/g/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v7, 0x41e00000    # 28.0f

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->g:Ljava/lang/String;

    const v0, -0x575758

    iput v0, p0, Lorg/telegram/ui/tools/g/e;->k:I

    const v0, -0xc47b40

    iput v0, p0, Lorg/telegram/ui/tools/g/e;->i:I

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->a:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    iget-object v8, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v11, :cond_0

    move v0, v9

    :goto_0
    or-int/lit8 v2, v0, 0x30

    if-eqz v11, :cond_1

    move v3, v6

    :goto_1
    if-eqz v11, :cond_2

    add-int/lit8 v0, p2, 0x7

    int-to-float v5, v0

    :goto_2
    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v11, :cond_3

    move v0, v9

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    if-eqz v11, :cond_4

    move v1, v9

    :goto_4
    or-int/lit8 v2, v1, 0x30

    if-eqz v11, :cond_5

    move v3, v7

    :goto_5
    const/high16 v4, 0x41380000    # 11.5f

    if-eqz v11, :cond_6

    add-int/lit8 v1, p2, 0x44

    int-to-float v5, v1

    :goto_6
    move v1, v12

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v11, :cond_7

    move v0, v9

    :goto_7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    if-eqz v11, :cond_8

    move v1, v9

    :goto_8
    or-int/lit8 v2, v1, 0x30

    if-eqz v11, :cond_9

    move v3, v7

    :goto_9
    const/high16 v4, 0x42100000    # 36.0f

    if-eqz v11, :cond_a

    add-int/lit8 v1, p2, 0x44

    int-to-float v5, v1

    :goto_a
    move v1, v12

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v11, :cond_b

    move v0, v9

    :goto_b
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    if-eqz v11, :cond_c

    move v1, v9

    :goto_c
    or-int/lit8 v2, v1, 0x30

    if-eqz v11, :cond_d

    move v3, v7

    :goto_d
    const/high16 v4, 0x42680000    # 58.0f

    if-eqz v11, :cond_e

    add-int/lit8 v1, p2, 0x44

    int-to-float v5, v1

    :goto_e
    move v1, v12

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v11, :cond_f

    move v0, v10

    :goto_f
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    if-eqz v11, :cond_10

    move v1, v10

    :goto_10
    or-int/lit8 v2, v1, 0x30

    if-eqz v11, :cond_11

    add-int/lit8 v1, p2, 0x5

    int-to-float v3, v1

    :goto_11
    const/high16 v4, 0x429b0000    # 77.5f

    if-eqz v11, :cond_12

    move v5, v7

    :goto_12
    move v1, v12

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->f:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    if-eqz v11, :cond_13

    move v0, v9

    :goto_13
    or-int/lit8 v4, v0, 0x10

    if-eqz v11, :cond_14

    move v5, v6

    :goto_14
    if-eqz v11, :cond_15

    const/high16 v7, 0x41800000    # 16.0f

    :goto_15
    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->c:Lorg/telegram/ui/Components/CheckBox;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->c:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/tools/g/e;->c:Lorg/telegram/ui/Components/CheckBox;

    if-nez v11, :cond_18

    :goto_16
    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    or-int/lit8 v2, v10, 0x30

    if-eqz v11, :cond_16

    move v3, v6

    :goto_17
    const/high16 v4, 0x42180000    # 38.0f

    if-eqz v11, :cond_17

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_18
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/tools/g/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v10

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x7

    int-to-float v3, v0

    goto/16 :goto_1

    :cond_2
    move v5, v6

    goto/16 :goto_2

    :cond_3
    move v0, v10

    goto/16 :goto_3

    :cond_4
    move v1, v10

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v1, p2, 0x44

    int-to-float v3, v1

    goto/16 :goto_5

    :cond_6
    move v5, v7

    goto/16 :goto_6

    :cond_7
    move v0, v10

    goto/16 :goto_7

    :cond_8
    move v1, v10

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v1, p2, 0x44

    int-to-float v3, v1

    goto/16 :goto_9

    :cond_a
    move v5, v7

    goto/16 :goto_a

    :cond_b
    move v0, v10

    goto/16 :goto_b

    :cond_c
    move v1, v10

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v1, p2, 0x44

    int-to-float v3, v1

    goto/16 :goto_d

    :cond_e
    move v5, v7

    goto/16 :goto_e

    :cond_f
    move v0, v9

    goto/16 :goto_f

    :cond_10
    move v1, v9

    goto/16 :goto_10

    :cond_11
    move v3, v7

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v1, p2, 0xa

    int-to-float v5, v1

    goto/16 :goto_12

    :cond_13
    move v0, v10

    goto/16 :goto_13

    :cond_14
    const/high16 v5, 0x41800000    # 16.0f

    goto :goto_14

    :cond_15
    move v7, v6

    goto :goto_15

    :cond_16
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_17

    :cond_17
    move v5, v6

    goto :goto_18

    :cond_18
    move v10, v9

    goto :goto_16
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x2

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->a:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/tools/g/e;->a:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/tools/g/e;->k:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/tools/g/e;->i:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08086f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lorg/telegram/ui/tools/g/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->e:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3, v6}, Lorg/telegram/ui/tools/g/a/a;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, v6}, Lorg/telegram/ui/tools/g/a/a;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08086e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->e()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0808a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/g/g;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";;;"

    const-string/jumbo v4, " - "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08089c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/g/g;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";;;"

    const-string/jumbo v4, " - "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08084f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/g;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->l:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0808a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/g/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->j:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08089d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/g/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 v0, 0x42d00000    # 104.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setData(Lorg/telegram/ui/tools/g/g;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/tools/g/g;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->h:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/g/e;->b:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/tools/g/e;->d:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p1, p0, Lorg/telegram/ui/tools/g/e;->m:Lorg/telegram/ui/tools/g/g;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/e;->a()V

    return-void
.end method
