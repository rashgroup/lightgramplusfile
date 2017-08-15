.class public Lorg/telegram/ui/tools/f/b;
.super Landroid/widget/FrameLayout;
.source "SpecialContactCell.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lorg/telegram/ui/Components/AvatarDrawable;

.field private c:Lorg/telegram/ui/Components/BackupImageView;

.field private d:Lorg/telegram/ui/Components/CheckBox;

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Lorg/telegram/tgnet/TLObject;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/widget/ImageView;

.field private j:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private n:I

.field private o:I

.field private p:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41e00000    # 28.0f

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, -0x575758

    iput v0, p0, Lorg/telegram/ui/tools/f/b;->n:I

    const v0, -0xc47b40

    iput v0, p0, Lorg/telegram/ui/tools/f/b;->o:I

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->b:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->c:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->c:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v11, p0, Lorg/telegram/ui/tools/f/b;->c:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    move v2, v9

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_2
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/tools/f/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    move v0, v9

    :goto_3
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v11, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    move v2, v9

    :goto_4
    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    move v3, v7

    :goto_5
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_6
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/tools/f/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    move v0, v9

    :goto_7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v11, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    move v2, v9

    :goto_8
    const/4 v0, -0x1

    const/high16 v1, 0x41a00000    # 20.0f

    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    move v3, v7

    :goto_9
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    add-int/lit8 v5, p2, 0x44

    int-to-float v5, v5

    :goto_a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lorg/telegram/ui/tools/f/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    move v0, v9

    :goto_b
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    or-int/lit8 v4, v0, 0x10

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    move v5, v6

    :goto_c
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d

    move v7, v8

    :goto_d
    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/tools/f/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CheckBox;

    const v1, 0x7f020235

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->d:Lorg/telegram/ui/Components/CheckBox;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->d:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/tools/f/b;->d:Lorg/telegram/ui/Components/CheckBox;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_10

    :goto_e
    const/16 v0, 0x16

    const/high16 v1, 0x41b00000    # 22.0f

    or-int/lit8 v2, v10, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    move v3, v6

    :goto_f
    const/high16 v4, 0x42180000    # 38.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_f

    add-int/lit8 v5, p2, 0x25

    int-to-float v5, v5

    :goto_10
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/tools/f/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v2, v10

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_1

    :cond_2
    move v5, v6

    goto/16 :goto_2

    :cond_3
    move v0, v10

    goto/16 :goto_3

    :cond_4
    move v2, v10

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_5

    :cond_6
    move v5, v7

    goto/16 :goto_6

    :cond_7
    move v0, v10

    goto/16 :goto_7

    :cond_8
    move v2, v10

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v3, p2, 0x44

    int-to-float v3, v3

    goto/16 :goto_9

    :cond_a
    move v5, v7

    goto/16 :goto_a

    :cond_b
    move v0, v10

    goto :goto_b

    :cond_c
    move v5, v8

    goto :goto_c

    :cond_d
    move v7, v6

    goto :goto_d

    :cond_e
    add-int/lit8 v3, p2, 0x25

    int-to-float v3, v3

    goto :goto_f

    :cond_f
    move v5, v6

    goto :goto_10

    :cond_10
    move v10, v9

    goto :goto_e
.end method


# virtual methods
.method public a(I)V
    .locals 14

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object v6, v3

    move-object v7, v0

    move-object v8, v5

    :goto_0
    if-eqz p1, :cond_6

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->j:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->j:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_1d

    if-eqz v8, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->j:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_1d

    if-eqz v8, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->j:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v12, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->j:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v0, v5, :cond_1d

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v7, :cond_2

    if-nez v5, :cond_2

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_1c

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :goto_2
    iget v9, p0, Lorg/telegram/ui/tools/f/b;->l:I

    if-eq v0, v9, :cond_2

    move v5, v4

    :cond_2
    if-nez v5, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_1b

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1b

    if-eqz v7, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    :goto_4
    if-nez v4, :cond_7

    :cond_3
    :goto_5
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object v6, v0

    move-object v7, v3

    move-object v8, v5

    goto :goto_0

    :cond_5
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v3

    :cond_7
    if-eqz v7, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/tools/f/b;->b:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_c

    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v4, p0, Lorg/telegram/ui/tools/f/b;->l:I

    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/tools/f/b;->f:Ljava/lang/CharSequence;

    if-eqz v4, :cond_e

    iput-object v3, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/tools/f/b;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v3, p0, Lorg/telegram/ui/tools/f/b;->n:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/tools/f/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/tools/f/b;->e:I

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    iget v0, p0, Lorg/telegram/ui/tools/f/b;->e:I

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/tools/f/b;->e:I

    if-eqz v3, :cond_19

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->i:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/tools/f/b;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->c:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v1, "50_50"

    iget-object v2, p0, Lorg/telegram/ui/tools/f/b;->b:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v8, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_c
    iput v1, p0, Lorg/telegram/ui/tools/f/b;->l:I

    goto :goto_6

    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/tools/f/b;->b:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_6

    :cond_e
    if-eqz v7, :cond_10

    if-nez v0, :cond_f

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v3, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_10
    if-nez v0, :cond_11

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_11
    iput-object v0, p0, Lorg/telegram/ui/tools/f/b;->k:Ljava/lang/String;

    goto :goto_a

    :cond_12
    if-eqz v7, :cond_8

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v3, p0, Lorg/telegram/ui/tools/f/b;->n:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "BotStatusRead"

    const v4, 0x7f0800d8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "BotStatusCantRead"

    const v4, 0x7f0800d7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_15
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-eq v0, v3, :cond_17

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_16

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    if-gt v0, v3, :cond_17

    :cond_16
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v3, p0, Lorg/telegram/ui/tools/f/b;->o:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v3, "Online"

    const v4, 0x7f0803ca

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v3, p0, Lorg/telegram/ui/tools/f/b;->n:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_19
    move v1, v2

    goto/16 :goto_9

    :cond_1a
    move v4, v5

    goto/16 :goto_4

    :cond_1b
    move v4, v5

    move-object v0, v3

    goto/16 :goto_4

    :cond_1c
    move v0, v1

    goto/16 :goto_2

    :cond_1d
    move v5, v1

    goto/16 :goto_1

    :cond_1e
    move-object v6, v0

    move-object v7, v3

    move-object v8, v3

    goto/16 :goto_0

    :cond_1f
    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lorg/telegram/ui/tools/f/b;->h:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/tools/f/b;->f:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->m:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->p:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/b;->c:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/tools/f/b;->h:Ljava/lang/CharSequence;

    iput-object v2, p0, Lorg/telegram/ui/tools/f/b;->f:Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/telegram/ui/tools/f/b;->g:Lorg/telegram/tgnet/TLObject;

    iput v3, p0, Lorg/telegram/ui/tools/f/b;->e:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/tools/f/b;->a(I)V

    return-void
.end method
