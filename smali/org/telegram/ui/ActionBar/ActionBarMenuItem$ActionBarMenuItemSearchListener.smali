.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.super Ljava/lang/Object;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBarMenuItemSearchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSearchCollapse()V
    .locals 0

    return-void
.end method

.method public onSearchExpand()V
    .locals 0

    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 0

    return-void
.end method
