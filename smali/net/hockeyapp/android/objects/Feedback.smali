.class public Lnet/hockeyapp/android/objects/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x23f22471d131d6e8L


# instance fields
.field private mCreatedAt:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mId:I

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->mCreatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lnet/hockeyapp/android/objects/Feedback;->mId:I

    return v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->mCreatedAt:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lnet/hockeyapp/android/objects/Feedback;->mId:I

    return-void
.end method

.method public setMessages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->mMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->mName:Ljava/lang/String;

    return-void
.end method
