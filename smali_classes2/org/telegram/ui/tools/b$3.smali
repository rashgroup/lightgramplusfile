.class Lorg/telegram/ui/tools/b$3;
.super Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$3;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$a;->getAdapterPosition()I

    move-result v2

    rem-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v0, v2, 0x4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :goto_1
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2
.end method