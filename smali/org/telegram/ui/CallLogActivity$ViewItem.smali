.class Lorg/telegram/ui/CallLogActivity$ViewItem;
.super Ljava/lang/Object;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewItem"
.end annotation


# instance fields
.field public button:Landroid/widget/ImageView;

.field public cell:Lorg/telegram/ui/Cells/ProfileSearchCell;

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/widget/ImageView;Lorg/telegram/ui/Cells/ProfileSearchCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$ViewItem;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$ViewItem;->button:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$ViewItem;->cell:Lorg/telegram/ui/Cells/ProfileSearchCell;

    return-void
.end method
