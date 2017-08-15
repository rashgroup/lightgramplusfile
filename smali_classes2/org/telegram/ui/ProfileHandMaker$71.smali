.class Lorg/telegram/ui/ProfileHandMaker$71;
.super Ljava/lang/Object;
.source "ProfileHandMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileHandMaker;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileHandMaker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileHandMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileHandMaker$71;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileHandMaker$71;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileHandMaker;->ed:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ProfileHandMaker$71;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileHandMaker;->txt_67:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method
